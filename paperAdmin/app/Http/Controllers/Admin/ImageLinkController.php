<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Admin;
use App\Models\Category;
use App\Models\News;
use App\Models\ImageLink;
use App\Models\SubCategory;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
use Image;
use DateTimezone;
use DateTime;
class ImageLinkController extends Controller
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

        if(Auth::guard('admin')->user()->id == 5 || Auth::guard('admin')->user()->id == 1){
        $newsList  = ImageLink::orderBy('id','desc')->get();

        }else{
            $newsList  = ImageLink::where('admin_id',Auth::guard('admin')->user()->id)
            ->orderBy('id','desc')->get();

        }

        return view('admin.imagelink.index',compact('newsList'));
    }


    public function store(Request $request){
        if (is_null($this->user) || !$this->user->can('imagelinkAdd')) {

            return redirect()->route('mainLogin');
        }


        $filePath="extraImage";

        try{

            DB::beginTransaction();
        $menu= new ImageLink();
        $menu->admin_id = Auth::guard('admin')->user()->id;
        if ($request->hasfile('image_folder')) {
            $menu->image_folder = CommonController::compressImage(300,300,$filePath,$request->image_folder);
           }
        $menu->save();



        DB::commit();

        return redirect()->back()->with('success','Added successfully!');

    } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }

    }

    public function update(Request $request,$id){
        if (is_null($this->user) || !$this->user->can('imagelinkUpdate')) {

            return redirect()->route('mainLogin');
        }


        $filePath="extraImage";

        try{

            DB::beginTransaction();
        $menu= ImageLink::find($id);
        $menu->admin_id = Auth::guard('admin')->user()->id;
        if ($request->hasfile('image_folder')) {
            $menu->image_folder = CommonController::compressImage(300,300,$filePath,$request->image_folder);
           }
        $menu->save();



        DB::commit();

        return redirect()->back()->with('success','Updated successfully!');

    } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }

    }

    public function destroy(string $id)
    {
        if (is_null($this->user) || !$this->user->can('imagelinkDelete')) {

            return redirect()->route('mainLogin');
        }

        try{
            DB::beginTransaction();
            \LogActivity::addToLog('menu delete ');

            ImageLink::destroy($id);

            DB::commit();
            return redirect()->back()->with('error','Deleted successfully!');

        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('error_500');
        }
    }
}
