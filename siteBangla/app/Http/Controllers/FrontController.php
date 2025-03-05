<?php

namespace App\Http\Controllers;

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
class FrontController extends Controller
{
    public function index(){


        $firstSectionNews  = News::where('publish_site',1)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)
        ->where('home_page_position','first')->orderBy('id','desc')->first();



        $firstSectionNewsEnglish  = News::where('publish_site',0)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)
        ->where('home_page_position','first')->orderBy('id','desc')->first();


        $secondSectionNews  = News::where('publish_site',1)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)
        ->where('home_page_position','second')->orderBy('id','desc')->limit(2)->get();


        $thirdSectionNewsTwo  = News::where('publish_site',1)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)
        ->where('home_page_position','third')->orderBy('id','desc')->limit(3)->get();


        $thirdSectionNewsTwoEnglish  = News::where('publish_site',0)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)
        ->where('home_page_position','third')->orderBy('id','desc')->limit(3)->get();


        $fourthSectionNewsTwo  = News::where('publish_site',1)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)
        ->where('home_page_position','fourth')->orderBy('id','desc')->limit(1)->get();


        $fourthSectionNewsTwoEnglish  = News::where('publish_site',0)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)
        ->where('home_page_position','fourth')->orderBy('id','desc')->limit(1)->get();


        $latestBanglaNews  = News::where('publish_site',1)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)->orderBy('id','desc')->limit(20)->get();



        return view('front.index',compact(
            'firstSectionNewsEnglish',
            'thirdSectionNewsTwoEnglish',
            'fourthSectionNewsTwoEnglish',
            'firstSectionNews',
            'secondSectionNews',
            'thirdSectionNewsTwo',
            'fourthSectionNewsTwo',
            'latestBanglaNews'
        ));
    }



    public function news($id){
        $id = base64_decode($id);

        $newsListOne = News::where('publish_site',1)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)
                            ->where('category',$id)->orderBy('id','desc')->limit(1)->get();
        
                            $newsListTwo = News::where('publish_site',1)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)
                            ->where('category',$id)->orderBy('id','desc')->skip(1)->take(4)->get();


                            $newsListThree = News::where('publish_site',1)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)
                            ->where('category',$id)->orderBy('id','desc')->get();


                            $latestBanglaNews  = News::where('publish_site',1)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)->orderBy('id','desc')->limit(20)->get();

                            $latestBanglaNewsPopular  = News::where('publish_site',1)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)->orderBy('id','asc')->limit(20)->get();

                            return view('front.categoryWiseNews',compact(
                                'id',
                                'newsListOne',
                                'newsListTwo',
                                'newsListThree',
                                'latestBanglaNews',
                                'latestBanglaNewsPopular'
                            ));
    }


    public function subCategoryNews($id){


        $id = base64_decode($id);

        $newsListOne = News::where('publish_site',1)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)
                            ->where('sub_category',$id)->orderBy('id','desc')->limit(1)->get();
        
                            $newsListTwo = News::where('publish_site',1)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)
                            ->where('sub_category',$id)->orderBy('id','desc')->skip(1)->take(4)->get();


                            $newsListThree = News::where('publish_site',1)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)
                            ->where('sub_category',$id)->orderBy('id','desc')->get();


                            $latestBanglaNews  = News::where('publish_site',1)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)->orderBy('id','desc')->limit(20)->get();

                            $latestBanglaNewsPopular  = News::where('publish_site',1)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)->orderBy('id','asc')->limit(20)->get();

                            return view('front.subCategoryNews',compact(
                                'id',
                                'newsListOne',
                                'newsListTwo',
                                'newsListThree',
                                'latestBanglaNews',
                                'latestBanglaNewsPopular'
                            ));

    }



    public function allNews(){


        

        $newsListOne = News::where('publish_site',1)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)
                            ->orderBy('id','desc')->limit(1)->get();
        
                            $newsListTwo = News::where('publish_site',1)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)
                            ->orderBy('id','desc')->skip(1)->take(4)->get();


                            $newsListThree = News::where('publish_site',1)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)
                           ->orderBy('id','desc')->get();


                            $latestBanglaNews  = News::where('publish_site',1)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)->orderBy('id','desc')->limit(20)->get();

                            $latestBanglaNewsPopular  = News::where('publish_site',1)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)->orderBy('id','asc')->limit(20)->get();

                            return view('front.allNews',compact(
                            
                                'newsListOne',
                                'newsListTwo',
                                'newsListThree',
                                'latestBanglaNews',
                                'latestBanglaNewsPopular'
                            ));


    }


    public function newsDetail($slug){



        $newDetailId = News::where('title_slug',$slug)->value('id');
        $latestNewsDetail  = News::where('id',$newDetailId)->first();


        $latestBanglaNews  = News::where('publish_site',1)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)->orderBy('id','desc')->limit(20)->get();

                            $latestBanglaNewsPopular  = News::where('publish_site',1)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)->orderBy('id','asc')->limit(20)->get();

        return view('front.newsDetail',compact(
                            
            'latestNewsDetail',
            'latestBanglaNews',
                                'latestBanglaNewsPopular'
        ));

    }
}
