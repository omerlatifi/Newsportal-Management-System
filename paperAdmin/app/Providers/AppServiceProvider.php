<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
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
        if(\Illuminate\Support\Facades\Schema::hasTable('system_information')){



            //data code new
            view()->composer('*', function ($view)
            {


                $mainCodeCountHeader =0;

                $totalReceiveNothi=0;

            //enddata code new
            view()->share('mainCodeCountHeader', $mainCodeCountHeader);
            view()->share('totalReceiveNothi', $totalReceiveNothi);
        });



            $data = DB::table('system_information')->first();

            if (!$data) {
                $icon_name = '';
                $logo_name ='';
                $ins_name = '';
                $ins_add = '';
                $ins_url = '';
                $ins_email = '';

                $ins_phone = '';

                view()->share('ins_name', $ins_name);
                view()->share('logo',  $logo_name);
                view()->share('icon', $icon_name);
                view()->share('ins_add', $ins_add);
                view()->share('ins_phone', $ins_phone);
                view()->share('ins_email', $ins_email);
                view()->share('ins_url', $ins_url);

            }else{
                view()->share('ins_name', $data->system_name);
                view()->share('logo',  $data->system_logo);
                view()->share('icon', $data->system_icon);
                view()->share('ins_add', $data->system_address);
                view()->share('ins_phone', $data->system_phone);
                view()->share('ins_email', $data->system_email);

                view()->share('ins_url', $data->system_url);

            }

        }else{
            $mainCodeCountHeader = 0;
            $icon_name = '';
            $logo_name ='';
            $ins_name = '';
            $ins_add = '';
            $ins_url = '';
            $ins_email = '';

            $ins_phone = '';
            view()->share('mainCodeCountHeader', $mainCodeCountHeader);
            view()->share('ins_name', $ins_name);
            view()->share('logo',  $logo_name);
            view()->share('icon', $icon_name);
            view()->share('ins_add', $ins_add);
            view()->share('ins_phone', $ins_phone);
            view()->share('ins_email', $ins_email);
            view()->share('ins_url', $ins_url);
        }

       
    }
}
