<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Auth;
use App\Models\Admin;
use App\Models\News;
use DB;
use Carbon\Carbon;
use App\Models\SystemInformation;
use Hash;
use Illuminate\Support\Str;
use Mail;
use PDF;
use Response;
use App\Models\SocialLink;
use App\Models\Category;
use App\Models\SubCategory;
use Mpdf\Mpdf;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {


            $data = DB::table('system_information')->first();
            $getLinks = DB::table('social_links')->get();

            $newsListHeadLine  = News::where('publish_site',0)->where('status',1)
            ->where('trash_status',0)->where('approve_status',1)
            ->where('headline_type','yes')->orderBy('id','desc')->limit(10)->get();


            $headerCat = Category::where('status',1)->orderBy('priority','asc')->get();
            $headerCatSub = SubCategory::orderBy('id','asc')->get();

            $footerCat = Category::where('status',1)->orderBy('priority','asc')
            ->limit(3)->get();

            $footerCatOne = Category::where('status',1)->orderBy('priority','asc')->skip(3)
            ->take(3)->get();

            $footerCatTwo = Category::where('status',1)->orderBy('priority','asc')->skip(6)
            ->take(3)->get();


            $adminPanelList = DB::table('admins')->where('id','!=',1)->get();

            view()->share('adminPanelList', $adminPanelList);


                view()->share('headerCatSub', $headerCatSub);
                view()->share('footerCatOne', $footerCatOne);
                view()->share('footerCatTwo', $footerCatTwo);
                view()->share('footerCat', $footerCat);
                view()->share('headerCat', $headerCat);
                view()->share('newsListHeadLine', $newsListHeadLine);
                view()->share('getLinks', $getLinks);
                view()->share('ins_name', $data->system_name);
                view()->share('logo',  $data->system_logo);
                view()->share('icon', $data->system_icon);
                view()->share('ins_add', $data->system_address);
                view()->share('ins_phone', $data->system_phone);
                view()->share('ins_email', $data->system_email);
                view()->share('ins_url', $data->bangla_link);
                view()->share('eng_ins_url', $data->english_link);
                view()->share('admin_ins_url', $data->admin_link);

    }
}
