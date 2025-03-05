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
class NewsController extends Controller
{

    public $user;


    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::guard('admin')->user();
            return $next($request);
        });
    }


    public function uploadImageNews(){

        if (is_null($this->user) || !$this->user->can('newsView') || !$this->user->can('newsAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('news add ');


            $categoryList  = Category::orderBy('id','desc')->get();
            $subcategoryList = SubCategory::orderBy('id','desc')->get();
            $imageLinkList  = ImageLink::orderBy('id','desc')->get();
            return view('admin.banglanews.uploadImageNews',compact('imageLinkList','categoryList','subcategoryList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }

    }

    public function uploadVideoNews(){

        if (is_null($this->user) || !$this->user->can('newsView') || !$this->user->can('newsAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('news add ');


            $categoryList  = Category::orderBy('id','desc')->get();
            $subcategoryList = SubCategory::orderBy('id','desc')->get();
            $imageLinkList  = ImageLink::orderBy('id','desc')->get();
            return view('admin.banglanews.uploadVideoNews',compact('imageLinkList','categoryList','subcategoryList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }

    }
    public function create(){


        if (is_null($this->user) || !$this->user->can('newsView') || !$this->user->can('newsAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('news add ');


            $categoryList  = Category::orderBy('id','desc')->get();
            $subcategoryList = SubCategory::orderBy('id','desc')->get();

            return view('admin.banglanews.create',compact('categoryList','subcategoryList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }



    public function edit($id){


        if (is_null($this->user) || !$this->user->can('newsView') || !$this->user->can('newsUpdate')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('news Update ');


            $categoryList  = Category::orderBy('id','desc')->get();
            $subcategoryList = SubCategory::orderBy('id','desc')->get();

            $newList = News::find(base64_decode($id));
$imageLinkList  = ImageLink::orderBy('id','desc')->get();
            return view('admin.banglanews.edit',compact('imageLinkList','categoryList','subcategoryList','newList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }

    public function show($id){


        if (is_null($this->user) || !$this->user->can('newsView') || !$this->user->can('newsUpdate')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('news Update ');


            $categoryList  = Category::orderBy('id','desc')->get();
            $subcategoryList = SubCategory::orderBy('id','desc')->get();

            $newList = News::find(base64_decode($id));

            return view('admin.banglanews.show',compact('categoryList','subcategoryList','newList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }


    public function banglaNewsDraft(){

        if(Auth::guard('admin')->user()->id == 5 || Auth::guard('admin')->user()->id == 1){
        $newsList  = News::where('publish_site',1)->where('status',0)
                     ->where('trash_status',0)->where('approve_status',1)
                     ->orderBy('id','desc')->get();

        }else{
            $newsList  = News::where('publish_site',1)->where('status',0)
            ->where('trash_status',0)
            ->where('admin_id',Auth::guard('admin')->user()->id)
            ->orderBy('id','desc')->get();

        }

                     return view('admin.banglanews.banglaNewsDraft',compact('newsList'));
    }

    public function pendingNewsList(){

        if(Auth::guard('admin')->user()->id == 5 || Auth::guard('admin')->user()->id == 1){
            $newsList  = News::where('publish_site',1)->where('status',1)
                         ->where('trash_status',0)->where('approve_status',0)
                         ->orderBy('id','desc')->get();

            }else{
                $newsList  = News::where('publish_site',1)->where('status',1)
                ->where('trash_status',0)->where('approve_status',0)
                ->where('admin_id',Auth::guard('admin')->user()->id)
                ->orderBy('id','desc')->get();

            }

                         return view('admin.banglanews.pendingNewsList',compact('newsList'));

    }

    public function banglaNewsTrash(){

        if(Auth::guard('admin')->user()->id == 5 || Auth::guard('admin')->user()->id == 1){
            $newsList  = News::where('publish_site',1)->where('trash_status',1)
                         ->orderBy('id','desc')->get();

            }else{
                $newsList  = News::where('publish_site',1)->where('trash_status',1)
                ->where('admin_id',Auth::guard('admin')->user()->id)
                ->orderBy('id','desc')->get();

            }

                         return view('admin.banglanews.banglaNewsTrash',compact('newsList'));

    }


    public function banglaNewsDraftPublish($id){

        $dt = new DateTime();
        $dt->setTimezone(new DateTimezone('Asia/Dhaka'));
        $created_at = $dt->format('h:i:sa');

        $updateNewData = News::find($id);
        $updateNewData->status = 1;
        $updateNewData->create_date = date('Y-m-d');
        $updateNewData->create_time = $created_at;
        $updateNewData->status = 1;
        $updateNewData->save();
        if(Auth::guard('admin')->user()->id == 5 || Auth::guard('admin')->user()->id == 1){
        return redirect()->route('news.index')->with('success','Published successfully!');
        }else{
            return redirect()->route('news.index')->with('success','Send For Approval Successfully!');
        }
    }


    public function index(){


        if (is_null($this->user) || !$this->user->can('newsView') || !$this->user->can('newsAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('news add ');


            if(Auth::guard('admin')->user()->id == 5 || Auth::guard('admin')->user()->id == 1){


            $newsList  = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('approve_status',1)->orderBy('id','desc')->limit(10)->get();

            $total_data = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('approve_status',1)->orderBy('id','desc')->count();

            }else{

                $newsList  = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('admin_id',Auth::guard('admin')->user()->id)->orderBy('id','desc')->limit(10)->get();

            $total_data = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('admin_id',Auth::guard('admin')->user()->id)->orderBy('id','desc')->count();


            }

            $total_serial_number1= $total_data/10;

            if (is_float($total_serial_number1)){
                $total_serial_number = ceil($total_serial_number1);

            }else{
                $total_serial_number = $total_serial_number1;
            }


            $categoryList  = Category::orderBy('id','desc')->get();
            $subcategoryList = SubCategory::orderBy('id','desc')->get();

            return view('admin.banglanews.index',compact('total_serial_number1','total_serial_number','newsList','total_data','categoryList','subcategoryList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }


    public function store(Request $request){
        if (is_null($this->user) || !$this->user->can('newsAdd')) {

            return redirect()->route('mainLogin');
        }

        // dd($request->all());

        try{

            DB::beginTransaction();

        $product= new News();
        $product->title = $request->title;
        $product->title_slug = Str::slug($request->title);
        $product->subtitle = $request->subtitle;
        $product->des = $request->des;
        $product->image_news = $request->image_news;
        $product->video_news = $request->video_news;
        $product->image_caption = $request->image_caption;
        $product->headline_type = $request->headline_type;
        $product->home_page_position = $request->home_page_position;
        $product->category = $request->category;
        $product->sub_category = $request->sub_category;
        $product->publish_site = $request->publish_site;
        $product->status = $request->status;
        $product->create_date = date("Y-m-d", strtotime($request->create_date));
        $product->create_time = $request->create_time;
        if(Auth::guard('admin')->user()->id == 5 || Auth::guard('admin')->user()->id == 1){
            $product->approve_status = 1;
        }else{
            $product->approve_status = 0;
        }
        $product->trash_status = $request->trash_status;
        $product->admin_id = Auth::guard('admin')->user()->id;
        $filePath="newCoverPhoto";
        if ($request->hasfile('image')) {
            $product->image = CommonController::compressImage(725,407,$filePath,$request->image);
           }

        $product->save();



        DB::commit();



        if($request->status == 1){

        return redirect()->route('news.index')->with('success','Added successfully!');

        }else{
            return redirect()->route('banglaNewsDraft')->with('success','Added successfully!');

        }

    } catch (\Exception $e) {

        DB::rollBack();
       // return redirect()->route('error_500');

       return redirect()->route('error_500');

        }

    }


    public function Update(Request $request,$id){
        if (is_null($this->user) || !$this->user->can('newsAdd')) {

            return redirect()->route('mainLogin');
        }

        // dd($request->all());

        try{

            DB::beginTransaction();

        $product= News::find($id);
        $product->title = $request->title;
        $product->title_slug = Str::slug($request->title);
        $product->subtitle = $request->subtitle;
        $product->des = $request->des;
        $product->image_caption = $request->image_caption;
        $product->headline_type = $request->headline_type;
        $product->home_page_position = $request->home_page_position;
        $product->category = $request->category;
        $product->sub_category = $request->sub_category;
        $product->publish_site = $request->publish_site;
        $product->status = $request->status;
        if(Auth::guard('admin')->user()->id == 5 || Auth::guard('admin')->user()->id == 1){
            $product->approve_status = 1;
        }else{
            $product->approve_status = 0;
        }
        $product->trash_status = $request->trash_status;
        $product->admin_id = Auth::guard('admin')->user()->id;
        $filePath="newCoverPhoto";
        if ($request->hasfile('image')) {
            $product->image = CommonController::compressImage(725,407,$filePath,$request->image);
           }

        $product->save();



        DB::commit();

        if($request->status == 1){

            return redirect()->route('news.index')->with('success','Updated successfully!');

            }else{
                return redirect()->route('banglaNewsDraft')->with('success','Updated successfully!');

            }

    } catch (\Exception $e) {

        DB::rollBack();
       // return redirect()->route('error_500');

       return redirect()->route('error_500');

        }

    }

    public function paginationStart(Request $request){

        $id_for_pass = $request->id_for_pass;


        if(Auth::guard('admin')->user()->id == 5 || Auth::guard('admin')->user()->id == 1){


        if($id_for_pass == 1){

            $total_data =News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('approve_status',1)->orderBy('id','desc')->count();
            $total_serial_number1= $total_data/10;

    if (is_float($total_serial_number1)){
        $total_serial_number = ceil($total_serial_number1);

    }else{
        $total_serial_number = $total_serial_number1;
    }
            $product_list = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('approve_status',1)->orderBy('id','desc')->limit(10)->get();
            $product_list_count = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('approve_status',1)->orderBy('id','desc')->limit(10)->count();
            $minus_one = 0;
        }else{
            $total_data = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('approve_status',1)->orderBy('id','desc')->count();
            $total_serial_number1= $total_data/10;

    if (is_float($total_serial_number1)){
        $total_serial_number = ceil($total_serial_number1);

    }else{
        $total_serial_number = $total_serial_number1;
    }
            $minus_one = ($id_for_pass - 1)*10;

            $product_list = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('approve_status',1)->orderBy('id','desc')->skip($minus_one)->take(10)->get();
            $product_list_count = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('approve_status',1)->orderBy('id','desc')->skip($minus_one)->take(10)->count();
        }

    }else{

        //jurnal code start


        if($id_for_pass == 1){

            $total_data =News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('admin_id',Auth::guard('admin')->user()->id)->orderBy('id','desc')->count();
            $total_serial_number1= $total_data/10;

    if (is_float($total_serial_number1)){
        $total_serial_number = ceil($total_serial_number1);

    }else{
        $total_serial_number = $total_serial_number1;
    }
            $product_list = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('admin_id',Auth::guard('admin')->user()->id)->orderBy('id','desc')->limit(10)->get();
            $product_list_count = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('admin_id',Auth::guard('admin')->user()->id)->orderBy('id','desc')->limit(10)->count();
            $minus_one = 0;
        }else{
            $total_data = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('admin_id',Auth::guard('admin')->user()->id)->orderBy('id','desc')->count();
            $total_serial_number1= $total_data/10;

    if (is_float($total_serial_number1)){
        $total_serial_number = ceil($total_serial_number1);

    }else{
        $total_serial_number = $total_serial_number1;
    }
            $minus_one = ($id_for_pass - 1)*10;

            $product_list = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('admin_id',Auth::guard('admin')->user()->id)->orderBy('id','desc')->skip($minus_one)->take(10)->get();
            $product_list_count = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('admin_id',Auth::guard('admin')->user()->id)->orderBy('id','desc')->skip($minus_one)->take(10)->count();
        }


        ///jurnal code end


    }

        $data = view('admin.banglanews.paginationStart',compact('product_list_count','total_data','minus_one','product_list','total_serial_number','id_for_pass'))->render();
                return response()->json(['options'=>$data]);
    }



    public function paginationStartSearch(Request $request){


        $search_value = $request->search_value;

if(Auth::guard('admin')->user()->id == 5 || Auth::guard('admin')->user()->id == 1){

        $total_data = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('approve_status',1)->Where('title','LIKE',$search_value.'%')
        ->latest()->count();

            $total_serial_number1= $total_data/10;

            if (is_float($total_serial_number1)){
                $total_serial_number = ceil($total_serial_number1);

            }else{
                $total_serial_number = $total_serial_number1;
            }

             //dd($total_serial_number);

                $product_list = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('approve_status',1)->Where('title','LIKE',$search_value.'%')->latest()->limit(10)->get();
        }else{


            $total_data = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('admin_id',Auth::guard('admin')->user()->id)->Where('title','LIKE',$search_value.'%')
            ->latest()->count();

                $total_serial_number1= $total_data/10;

                if (is_float($total_serial_number1)){
                    $total_serial_number = ceil($total_serial_number1);

                }else{
                    $total_serial_number = $total_serial_number1;
                }

                 //dd($total_serial_number);

                    $product_list = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('admin_id',Auth::guard('admin')->user()->id)->Where('title','LIKE',$search_value.'%')->latest()->limit(10)->get();


        }
                $data = view('admin.banglanews.paginationStartSearch',compact('search_value','product_list','total_serial_number'))->render();
                return response()->json(['options'=>$data]);


    }


    public function paginationStartSearchAjax(Request $request){


        $search_value = $request->searchCat;

        $id_for_pass = $request->id_for_pass;

if(Auth::guard('admin')->user()->id == 5 || Auth::guard('admin')->user()->id == 1){

        if($id_for_pass == 1){

            $total_data =News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('approve_status',1)->Where('title','LIKE',$search_value.'%')->latest()->count();
            $total_serial_number1= $total_data/10;

    if (is_float($total_serial_number1)){
        $total_serial_number = ceil($total_serial_number1);

    }else{
        $total_serial_number = $total_serial_number1;
    }
            $product_list = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('approve_status',1)->Where('title','LIKE',$search_value.'%')->latest()->limit(10)->get();
            $minus_one = 0;
        }else{
            $total_data = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('approve_status',1)->Where('title','LIKE',$search_value.'%')->latest()->count();
            $total_serial_number1= $total_data/10;

    if (is_float($total_serial_number1)){
        $total_serial_number = ceil($total_serial_number1);

    }else{
        $total_serial_number = $total_serial_number1;
    }
            $minus_one = ($id_for_pass - 1)*10;

            $product_list = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('approve_status',1)->Where('title','LIKE',$search_value.'%')->latest()->skip($minus_one)->take(10)->get();
        }

    }else{



        if($id_for_pass == 1){

            $total_data =News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('admin_id',Auth::guard('admin')->user()->id)->Where('title','LIKE',$search_value.'%')->latest()->count();
            $total_serial_number1= $total_data/10;

    if (is_float($total_serial_number1)){
        $total_serial_number = ceil($total_serial_number1);

    }else{
        $total_serial_number = $total_serial_number1;
    }
            $product_list = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('admin_id',Auth::guard('admin')->user()->id)->Where('title','LIKE',$search_value.'%')->latest()->limit(10)->get();
            $minus_one = 0;
        }else{
            $total_data = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('admin_id',Auth::guard('admin')->user()->id)->Where('title','LIKE',$search_value.'%')->latest()->count();
            $total_serial_number1= $total_data/10;

    if (is_float($total_serial_number1)){
        $total_serial_number = ceil($total_serial_number1);

    }else{
        $total_serial_number = $total_serial_number1;
    }
            $minus_one = ($id_for_pass - 1)*10;

            $product_list = News::where('publish_site',1)->where('status',1)->where('trash_status',0)->where('admin_id',Auth::guard('admin')->user()->id)->Where('title','LIKE',$search_value.'%')->latest()->skip($minus_one)->take(10)->get();
        }



    }
        $data = view('admin.banglanews.paginationStartSearchAjax',compact('id_for_pass','minus_one','search_value','product_list','total_serial_number'))->render();
                return response()->json(['options'=>$data]);
    }


    public function banglaNewsTrashPublish($id){
        if (is_null($this->user) || !$this->user->can('newsDelete')) {

            return redirect()->route('mainLogin');
         }

         try{
             DB::beginTransaction();

            \LogActivity::addToLog('News delete ');

             News::destroy($id);
             DB::commit();

             return redirect()->back()->with('error','Deleted successfully!');

         } catch (\Exception $e) {

             DB::rollBack();
             return redirect()->route('error_500');
         }
    }


    public function banglaNewsTrashRestore($id){


        $tashDelete =News::find($id);
        $tashDelete->trash_status = 0;
        $tashDelete->save();

        return redirect()->route('news.index')->with('info','Restore successfully!');
    }

    public function approveNewsFromMain($id){


        $tashDelete =News::find($id);
        $tashDelete->approve_status = 1;
        $tashDelete->save();
        return redirect()->route('news.index')->with('info','Approved successfully!');

    }

    public function approveAll($id){

        News::where('approve_status',0)
       ->update([
           'approve_status' => 1
        ]);
        return redirect()->route('news.index')->with('info','Approved successfully!');
    }



    public function destroy($id){

        if (is_null($this->user) || !$this->user->can('newsDelete')) {

           return redirect()->route('mainLogin');
        }

        try{
            DB::beginTransaction();

           \LogActivity::addToLog('News delete ');

            //News::destroy($id);

            $tashDelete =News::find($id);
            $tashDelete->trash_status = 1;
            $tashDelete->save();
            DB::commit();

            return redirect()->route('news.index')->with('error','Move To Trash successfully!');

        } catch (\Exception $e) {

            DB::rollBack();
            return redirect()->route('error_500');
        }
    }
}
