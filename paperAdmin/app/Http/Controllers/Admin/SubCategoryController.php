<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Admin;
use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
use Image;
class SubCategoryController extends Controller
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


        if (is_null($this->user) || !$this->user->can('subcategoryView') || !$this->user->can('subcategoryAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('subcategory list ');


            $menuList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();

            return view('admin.subcategoryList.index',compact('menuList','subcategoryList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }


    public function edit($id){


        if (is_null($this->user) || !$this->user->can('subcategoryView') || !$this->user->can('subcategoryAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('subcategory list ');


            $menuList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();

            $subcategoryListEdit = SubCategory::find($id);

            //dd($subcategoryListEdit);

            return view('admin.subcategoryList.edit',compact('subcategoryListEdit','menuList','subcategoryList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }


    public function store(Request $request){

        if (is_null($this->user) || !$this->user->can('subcategoryAdd')) {

            return redirect()->route('mainLogin');
        }


        //dd($request->all());

        $request->validate([
            'subcategory_name' => 'required',
            'category_id' => 'required',
          ]);



        try{

            DB::beginTransaction();

           \LogActivity::addToLog('SubCategory store ');


           $addNewCategory = new SubCategory();
           $addNewCategory->subcategory_name = $request->subcategory_name;
           $addNewCategory->subcategory_slug = Str::slug($request->subcategory_name);
           $addNewCategory->eng_name = $request->eng_name;
           $addNewCategory->status = 1;

           $addNewCategory->category_id = $request->category_id;
           $addNewCategory->save();

           DB::commit();

           return redirect()->route('subcategoryList.index')->with('success','Added successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }


    }


    public function update(Request $request,$id){

        if (is_null($this->user) || !$this->user->can('subcategoryAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            DB::beginTransaction();

           \LogActivity::addToLog('SubCategory Update');


           $addNewCategory = SubCategory::find($id);
           $addNewCategory->subcategory_name = $request->subcategory_name;
           $addNewCategory->subcategory_slug = Str::slug($request->subcategory_name);
           $addNewCategory->status = $request->status;
           $addNewCategory->eng_name = $request->eng_name;
           $addNewCategory->category_id = $request->category_id;
           $addNewCategory->save();

           DB::commit();

           return redirect()->route('subcategoryList.index')->with('success','Added successfully!');

        } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }


    }


    public function destroy($id){

        if (is_null($this->user) || !$this->user->can('subcategoryDelete')) {

            return redirect()->route('mainLogin');
        }

        try{
            DB::beginTransaction();
            \LogActivity::addToLog('subcategory delete ');

            SubCategory::destroy($id);

            DB::commit();
            return redirect()->route('subcategoryList.index')->with('error','Deleted successfully!');

    } catch (\Exception $e) {
        DB::rollBack();
        return redirect()->route('error_500');
    }
}


public function subcategoryStatusUpdate(Request $request){


    $addNewCategory = SubCategory::find($request->id);
    $addNewCategory->status = $request->status;
    $addNewCategory->save();

    return 1;


}


}
