<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Models\Admin;
use DB;
use Carbon\Carbon;
use App\Models\SystemInformation;
use Hash;
use Illuminate\Support\Str;
use Mail;
use PDF;
use Response;
use App\Models\Branch;
use App\Models\DesignationList;
use App\Models\DesignationStep;
use App\Models\AdminDesignationHistory;
use Mpdf\Mpdf;
use App\Models\Order;
use App\Models\Unit;
use App\Models\OrderDetail;
use App\Models\ProductAddOn;
use App\Models\ProductAttribute;
use App\Models\ProductVariation;
use App\Models\ProductVariationList;
use App\Models\SubCategory;
use App\Models\Category;
use App\Models\FoodType;
use App\Models\ShipAddress;
use App\Models\Menu;
use App\Models\Table;
use App\Models\News;
use App\Models\Product;
use App\Models\Vendor;
use File;
use Image;
use DateTime;
use DateTimezone;
class DashBoardController extends Controller
{
   //Now, $this->user holds the currently logged-in user.
             public $user;
             public function __construct()
             {
                     $this->middleware(function ($request, $next) {
                     $this->user = Auth::guard('admin')->user();
                     return $next($request);
                    });
            }



    //admin.dashboard
    public function index(){

        if (is_null($this->user) || !$this->user->can('dashboard.view')) {

            return redirect()->route('mainLogin');
        }
     //see activity //nedd app/Helpers/LogActivity
        \LogActivity::addToLog('view dashboard');

        // count total admin without super admin
        $users = Admin::where('id','!=',1)->orderBy('id','asc')->get();

        $count_admin = Admin::where('id','!=',1)->count();

        //id==1 and id==5 can see all table data
        if(Auth::guard('admin')->user()->id == 5 || Auth::guard('admin')->user()->id == 1){


            $totalNewsBangla = News::where('publish_site',1)
            ->where('status',1)->where('trash_status',0)->count();


            $totalNewsEnglish = News::where('publish_site',0)
            ->where('status',1)->where('trash_status',0)->count();

            $totalNewsDraft = News::where('status',0)->where('trash_status',0)->count();

            $totalNewsre = News::where('trash_status',1)->count();

        }else{

        //others can see only his data..
            $totalNewsBangla = News::where('publish_site',1)
            ->where('admin_id',Auth::guard('admin')->user()->id)
            ->where('status',1)->where('trash_status',0)->count();


            $totalNewsEnglish = News::where('publish_site',0)
            ->where('admin_id',Auth::guard('admin')->user()->id)
            ->where('status',1)->where('trash_status',0)->count();

            $totalNewsDraft = News::where('status',0)->where('admin_id',Auth::guard('admin')->user()->id)->where('trash_status',0)->count();

            $totalNewsre = News::where('admin_id',Auth::guard('admin')->user()->id)->where('trash_status',1)->count();



        }

          return view('admin.dashboard.dashboard',compact(
        'totalNewsBangla',
        'totalNewsEnglish',
        'totalNewsDraft',
        'totalNewsre',
        'users',
        'count_admin'));



    }
}
