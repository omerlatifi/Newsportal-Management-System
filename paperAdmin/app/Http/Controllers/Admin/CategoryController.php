<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Admin;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
use Image;
class CategoryController extends Controller
{
    public $user;


    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::guard('admin')->user();
            return $next($request);
        });
    }

    public function index(){


        if (is_null($this->user) || !$this->user->can('categoryView')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('category list ');


            $menuList = Category::orderBy('id','asc')->get();

            return view('admin.categoryList.index',compact('menuList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }

    public function create(){


        if (is_null($this->user) || !$this->user->can('categoryAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('category Add ');

            return view('admin.categoryList.create');

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }


    public function store(Request $request){

        if (is_null($this->user) || !$this->user->can('categoryAdd')) {

            return redirect()->route('mainLogin');
        }


        //dd($request->all());

        $request->validate([
            'category_name' => 'required',
            //'image' => 'required',
            // 'status' => 'required',
          ]);



        try{

            DB::beginTransaction();

           \LogActivity::addToLog('Category store ');



           $categoryListLast = Category::orderBy('id','desc')->value('priority');

           if(empty($categoryListLast)){

                 $mainIdList = 1;

           }else{
            $mainIdList =$categoryListLast +1;

           }



           $filePath = 'categoryImage';


           $addNewCategory = new Category();
           $addNewCategory->category_name = $request->category_name;
           $addNewCategory->eng_name = $request->eng_name;
           $addNewCategory->category_slug = Str::slug($request->category_name);
           $addNewCategory->status = 1;
           $addNewCategory->priority = $mainIdList;
           if ($request->hasfile('image')) {
            $addNewCategory->image = CommonController::compressImage(100,100,$filePath,$request->image);
           }
           if ($request->hasfile('web_image')) {
            $addNewCategory->web_image = CommonController::compressImage(800,100,$filePath,$request->web_image);
           }
           $addNewCategory->save();

           DB::commit();

           return redirect()->route('categoryList.index')->with('success','Added successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }


    }

    public function edit($id){


        if (is_null($this->user) || !$this->user->can('categoryUpdate')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('category Edit ');

            $menuLists = Category::find($id);
            $menuList = Category::orderBy('id','asc')->get();
            return view('admin.categoryList.edit',compact('menuLists','menuList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }


    public function update(Request $request,$id){

        if (is_null($this->user) || !$this->user->can('categoryUpdate')) {

            return redirect()->route('mainLogin');
        }


        try{

            DB::beginTransaction();

           \LogActivity::addToLog('category update');

           $filePath = 'categoryImage';
           $addNewCategory = Category::find($id);
           $addNewCategory->category_name = $request->category_name;
           $addNewCategory->eng_name = $request->eng_name;
           $addNewCategory->category_slug = Str::slug($request->category_name);
           $addNewCategory->status = $request->status;
           if ($request->hasfile('image')) {

            $checkPreviousFile = Category::where('id',$id)->value('image');

                if(File::exists($checkPreviousFile)){
                    File::delete($checkPreviousFile);
                }


            $addNewCategory->image = CommonController::compressImage(100,100,$filePath,$request->image);
           }
           if ($request->hasfile('web_image')) {


            $checkPreviousFileWeb = Category::where('id',$id)->value('web_image');

                if(File::exists($checkPreviousFileWeb)){
                    File::delete($checkPreviousFileWeb);
                }


            $addNewCategory->web_image = CommonController::compressImage(800,100,$filePath,$request->web_image);
           }
           $addNewCategory->save();

        DB::commit();

        return redirect()->route('categoryList.index')->with('info','Updated successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }
    }

    public function destroy($id){

            if (is_null($this->user) || !$this->user->can('categoryDelete')) {

                return redirect()->route('mainLogin');
            }

            try{
                DB::beginTransaction();
                \LogActivity::addToLog('category delete ');


                $checkPreviousFile = Category::where('id',$id)->value('image');

                if(File::exists($checkPreviousFile)){
                    File::delete($checkPreviousFile);
                }


                $checkPreviousFileWeb = Category::where('id',$id)->value('web_image');

                if(File::exists($checkPreviousFileWeb)){
                    File::delete($checkPreviousFileWeb);
                }


                Category::destroy($id);

                DB::commit();
                return redirect()->route('categoryList.index')->with('error','Deleted successfully!');

        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('error_500');
        }
    }



    public function categoryStatusUpdate(Request $request){


           $addNewCategory = Category::find($request->id);
           $addNewCategory->status = $request->status;
           $addNewCategory->save();

           return 1;


    }


    public function prioritytatusUpdate(Request $request){


        $addNewCategory = Category::find($request->id);
        $addNewCategory->priority = $request->priority;
        $addNewCategory->save();

        return 1;


    }
}
