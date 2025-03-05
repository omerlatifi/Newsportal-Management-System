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
use App\Models\SocialLink;
use App\Models\SubCategory;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
use Image;
use DateTimezone;
use DateTime;
class LinkController extends Controller
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


        $newsList  = SocialLink::orderBy('id','desc')->get();

        return view('admin.link.index',compact('newsList'));
    }


    public function store(Request $request){
        if (is_null($this->user) || !$this->user->can('linkAdd')) {

            return redirect()->route('mainLogin');
        }


        $filePath="extraImage";

        try{

            DB::beginTransaction();
        $menu= new SocialLink();
        $menu->title = $request->title;
        $menu->link = $request->link;
        $menu->save();



        DB::commit();

        return redirect()->back()->with('success','Added successfully!');

    } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }

    }

    public function update(Request $request,$id){
        if (is_null($this->user) || !$this->user->can('linkUpdate')) {

            return redirect()->route('mainLogin');
        }


        $filePath="extraImage";

        try{

            DB::beginTransaction();
        $menu= SocialLink::find($id);
        $menu->title = $request->title;
        $menu->link = $request->link;
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
        if (is_null($this->user) || !$this->user->can('linkDelete')) {

            return redirect()->route('mainLogin');
        }

        try{
            DB::beginTransaction();
            \LogActivity::addToLog('menu delete ');

            SocialLink::destroy($id);

            DB::commit();
            return redirect()->back()->with('error','Deleted successfully!');

        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('error_500');
        }
    }
}
