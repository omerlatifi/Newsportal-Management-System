@extends('front.master.master')

@section('title')
{{ $ins_name }}
@endsection

@section('css')

@endsection

@section('body')
<main>
    <div class="container">
        <div class="DTopSection">
            <div class="row">
                <div class="col-lg-8 col-sm-12 border-right-inner colresize" style="width: 72.5%;">
                    <div class="DLeadNews">
                        @if(!$firstSectionNews)

                        @else
                        <a href="{{ route('newsDetail',$firstSectionNews->title_slug) }}">
                            <div class="row">
                                <div class="col-lg-8 col-12">
                                    <div class="Imgresize">
                                        <figure class="ImgViewer">
                                            <picture class="FixingRatio">
                                                <img
                                                        src="{{ $admin_ins_url }}{{ $firstSectionNews->image }}"
                                                        alt="{{ $firstSectionNews->image_caption }}"
                                                        title="{{ $firstSectionNews->title }}"
                                                        class="img-responsive img100 ImgRatio">
                                            </picture>
                                        </figure>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-12 order-lg-first">
                                    <div class="Desc">
                                        <h1 class="Title">{{ $firstSectionNews->title }}</h1>
                                        <div class="Brief"><p>{!!  substr(strip_tags($firstSectionNews->des), 0, 400) !!}</p></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                        @endif
                    </div>
                    <div class="DTop2">
                        <div class="row">
                            @foreach($secondSectionNews as $secondSectionNewss)
                            <div class="col-lg-6 col-12 border-right-inner">
                                <div class="DTop2Lead">
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="row">
                                            <div class="col-lg-12 col-sm-3 col-5">
                                                <div class="ImgSection">
                                                    <div class="Imgresize">
                                                        <figure class="ImgViewer">
                                                            <picture class="FixingRatio"><img
                                                                src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                alt="{{ $secondSectionNewss->image_caption }}"
                                                                title="{{ $secondSectionNewss->title }}"
                                                                        class="img-responsive img100 ImgRatio">
                                                            </picture>
                                                        </figure>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-sm-9 col-7">
                                                <div class="Desc">
                                                    <h3 class="Title">{{ $secondSectionNewss->title }}</h3>
                                                    <div class="Brief"><p>{!!  substr(strip_tags($secondSectionNewss->des), 0, 400) !!}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            @endforeach
                            
                        </div>
                    </div>
                    <div class="DTop3">
                        <div class="row">
                            <div class="col-lg-8 col-12 border-right-inner">
                                <div class="DTop3Type1">
                                    @foreach($thirdSectionNewsTwo as $secondSectionNewss)
                                    <div class="DTop3Type1List">
                                        <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                            <div class="row">
                                                <div class="col-lg-4 col-sm-3 col-5">
                                                    <div class="ImgSection">
                                                        <div class="Imgresize">
                                                            <figure class="ImgViewer">
                                                                <picture class="FixingRatio"><img
                                                                    src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                    alt="{{ $secondSectionNewss->image_caption }}"
                                                                    title="{{ $secondSectionNewss->title }}"
                                                                            class="img-responsive img100 ImgRatio">
                                                                </picture>
                                                            </figure>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-8 col-sm-9 col-7">
                                                    <div class="Desc">
                                                        <h3 class="Title">{{ $secondSectionNewss->title }}</h3>
                                                        <div class="Brief"><p>{!!  substr(strip_tags($secondSectionNewss->des), 0, 200) !!}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    @endforeach
                                   
                                </div>
                            </div>
                            <div class="col-lg-4 col-12">
                                <div class="DTop3Type2List">
                                    <div class="col-sm-12 thumbnail">
                                        @foreach($fourthSectionNewsTwo as $secondSectionNewss)
                                        <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                            <div class="row">
                                                <div class="col-lg-12 col-sm-3 col-5">
                                                    <div class="Imgresize">
                                                        <figure class="ImgViewer">
                                                            <picture class="FixingRatio"><img
                                                                src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                alt="{{ $secondSectionNewss->image_caption }}"
                                                                title="{{ $secondSectionNewss->title }}"
                                                                        class="img-responsive img100 ImgRatio"></picture>
                                                        </figure>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12 col-sm-9 col-7">
                                                    <div class="Desc"><h3 class="Title">{{ $secondSectionNewss->title }}</h3></div>
                                                </div>
                                            </div>
                                        </a>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-12 colresize" style="width: 27.5%;">

                    <div class="SectionTitle MT30"><h3><a href="{{ route('subCategoryNews',base64_encode(13)) }}">Oponion<i class="ti-infinite"></i></a>
                        </h3></div>

                        <?php    
                        
                        $oponionOne = \App\Models\News::where('publish_site',0)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)
        ->where('sub_category',13)->orderBy('id','desc')->limit(1)->get();


        $oponionTwo = \App\Models\News::where('publish_site',0)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)
        ->where('sub_category',13)->orderBy('id','desc')->skip(1)->take(1)->get();
                        
                        
                        ?>
                    <div class="DOpinion">
                        <div class="DOpinionTop">

                            @foreach($oponionOne as $secondSectionNewss)
                            <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                <div class="row">
                                    <div class="col-lg-8 col-sm-9 col-7">
                                        <div class="row h-100">
                                            <div class="col-sm-12 m-auto">
                                                <div class="Desc">
                                                    <p class="WritterName"><i class="fas fa-pencil-alt"></i>{{ \App\Models\Admin::where('id',$secondSectionNewss->admin_id)->value('admin_name') }}
                                                    </p>
                                                    <h3 class="Title">{{ $secondSectionNewss->title }}</h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-3 col-5">
                                        <div class="Imgresize">
                                            <figure class="ImgViewer">
                                                <picture class="FixingRatio"><img
                                                    src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                    alt="{{ $secondSectionNewss->image_caption }}"
                                                    title="{{ $secondSectionNewss->title }}"
                                                            class="img-responsive img100"></picture>
                                            </figure>
                                        </div>
                                    </div>
                                </div>
                                <div class="Brief"><p>{!!  substr(strip_tags($secondSectionNewss->des), 0, 300) !!}</p></div>
                            </a>
                            @endforeach
                        </div>
                        <div class="OpinionArea">
                            <div class="DOpinionList">
                                @foreach($oponionTwo as $secondSectionNewss)
                                <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                    <div class="row">
                                        <div class="col-lg-4 col-sm-2 col-4">
                                            <div class="WThumb">
                                                src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                    alt="{{ $secondSectionNewss->image_caption }}"
                                                    title="{{ $secondSectionNewss->title }}"
                                                     class="img-fluid img100"></div>
                                        </div>
                                        <div class="col-lg-8 col-sm-10 col-8">
                                            <div class="row h-100">
                                                <div class="col-sm-12 m-auto">
                                                    <h3 class="Title">{{ $secondSectionNewss->title }}</h3>
                                                    <p class="OponionWriter"><i class="fas fa-pencil-alt"></i></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="DBangla">
            <div class="row">
                <div class="col-sm-9 border-right-inner">
                    <div class="DBanglaTitle"><a href="{{ $ins_url }}">
                            <h2 class="Title">বাংলা</h2></a></div>
                    <div class="DBanglaNews">
                        <div class="row">
                            <div class="col-lg-12 col-12 ">
                                <div class="row">
                                    <div class="col-lg-7 col-12 border-right-inner">
                                        <div class="DBanglaLeadNews">
                                            @if(!$firstSectionNewsEnglish)

                        @else
                                            <a href="{{ url($ins_url) }}{{ 'newsDetail/'.$firstSectionNewsEnglish->title_slug }}">
                                                <div class="Imgresize">
                                                    <figure class="ImgViewer">
                                                        <picture class="FixingRatio">
                                                            <img
                                                            src="{{ $admin_ins_url }}{{ $firstSectionNewsEnglish->image }}"
                                                            alt="{{ $firstSectionNewsEnglish->image_caption }}"
                                                            title="{{ $firstSectionNewsEnglish->title }}"
                                                                    class="img-fluid img100 ImgRatio">
                                                        </picture>
                                                    </figure>
                                                </div>
                                                <div class="Desc">
                                                    <h2 class="Title">{{ $firstSectionNewsEnglish->title }}</h2>
                                                    <div class="Brief"><p>{!!  substr(strip_tags($firstSectionNewsEnglish->des), 0, 400) !!}</p></div>
                                                </div>
                                            </a>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-12">
                                        <div class="DCommonCatS1List">
                                            @foreach($thirdSectionNewsTwoEnglish as $secondSectionNewss)
                                            <div class="DBanglaListItem">
                                                <a href="{{ url($ins_url) }}{{ 'newsDetail/'.$secondSectionNewss->title_slug }}">
                                                    <div class="row">
                                                        <div class="col-lg-5 col-sm-3 col-5">
                                                            <div class="Imgresize">
                                                                <figure class="ImgViewer">
                                                                    <picture class="FixingRatio">
                                                                        <img src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                                                class="img-fluid img100 ImgRatio">
                                                                    </picture>
                                                                </figure>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-7 col-sm-9 col-7">
                                                            <div class="Desc"><h2 class="Title">{{ $secondSectionNewss->title }}</h2></div>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            @endforeach
                                            @foreach($fourthSectionNewsTwoEnglish as $secondSectionNewss)
                                            <div class="DBanglaListItem">
                                                <a href="{{ url($ins_url) }}{{ 'newsDetail/'.$secondSectionNewss->title_slug }}">
                                                    <div class="row">
                                                        <div class="col-lg-5 col-sm-3 col-5">
                                                            <div class="Imgresize">
                                                                <figure class="ImgViewer">
                                                                    <picture class="FixingRatio"><img
                                                                        src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                                                class="img-fluid img100 ImgRatio">
                                                                    </picture>
                                                                </figure>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-7 col-sm-9 col-7">
                                                            <div class="Desc"><h2 class="Title">{{ $secondSectionNewss->title }}</h2></div>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="DEnLatestTitle"><p>Latest</p></div>
                    <ul class="DEnLatestList">

                        @foreach($latestBanglaNews as $secondSectionNewss)
                        <li>
                            <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                <p class="Title">{{ $secondSectionNewss->title }}</p>
                            </a>
                        </li>
                        @endforeach
                        
                    </ul>
                    <div class="allnewsEN">
                        <a href="{{ route('allNews') }}">All News <i class="fa fa-angle-double-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="container">
        <!-- Bangladesh Section  -->
        <section class="National + Politics mt-5">
            <div class="row">
                <div class="col-lg-9 border-right-inner">
                    <div class="SectionTitle"><h3>
                            <a href="{{ route('news',base64_encode(4)) }}">Bangladesh<i
                                        class="ti-infinite"></i></a></h3></div>


                                        <?php    
                        
                        $bdOne22 = \App\Models\News::where('publish_site',0)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)
        ->where('category',4)->orderBy('id','desc')->limit(1)->get();


        $bdTwo = \App\Models\News::where('publish_site',0)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)
        ->where('category',4)->orderBy('id','desc')->skip(1)->take(4)->get();
                        
                        
                        ?>

                    <div class="DCommonCatS1">
                        <div class="row">
                            <div class="col-lg-7 col-12 border-right-inner">
                                <div class="DCommonCatS1Top">
                                    @foreach($bdOne22 as $secondSectionNewss)
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="Imgresize">
                                            <figure class="ImgViewer">
                                                <picture class="FixingRatio"><img
                                                            data-src="#"
                                                            src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                            class="img-responsive img100 ImgRatio"></picture>
                                            </figure>
                                        </div>
                                        <div class="Desc">
                                            <h3 class="Title">{{ $secondSectionNewss->title }}</h3>
                                            <div class="Brief"><p>{!!  substr(strip_tags($secondSectionNewss->des), 0, 300) !!}</p></div>
                                        </div>
                                    </a>
                                    @endforeach
                                </div>
                            </div>
                            <div class="col-lg-5 col-12">
                                <div class="DCommonCatS1List">
                                    @foreach($bdTwo as $secondSectionNewss)
                                    <div class="DCommonCatS1ListItem">
                                        <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                            <div class="row">
                                                <div class="col-lg-7 col-sm-9 col-7">
                                                    <div class="Desc"><h2 class="Title">{{ $secondSectionNewss->title }}</h2></div>
                                                </div>
                                                <div class="col-lg-5 col-sm-3 col-5">
                                                    <div class="Imgresize">
                                                        <figure class="ImgViewer">
                                                            <picture class="FixingRatio"><img
                                                                        data-src="#"
                                                                        src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                                        class="img-responsive img100 ImgRatio">
                                                            </picture>
                                                        </figure>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    @endforeach
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-12">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="DAdd3">
                                <a href="https://www.facebook.com/people/Afroza-Begum-Diagnostic-Consultation-Center/61556775981607/?mibextid=LQQJ4d"
                                   target="_blank">
                                    <img src="{{ asset('/') }}public/front/assets/images/news.jpg" alt="Badhundhara"
                                         title="Badhundhara" class="img-fluid img100">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="DAdd3">
                                <a href="https://waltonbd.com/" target="_blank">
                                    <img src="{{ asset('/') }}public/front/assets/images/news.jpg" alt="Walton"
                                         title="Walton" class="img-fluid img100">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- International Section  -->
        <section class="National + Politics">
            <div class="row">
                <div class="col-lg-12 border-right-inner">
                    <div class="SectionTitle MT30"><h3>
                            <a href="{{ route('news',base64_encode(6)) }}">International<i
                                        class="ti-infinite"></i></a></h3></div>


                                        <?php    
                        
                                        $intOne = \App\Models\News::where('publish_site',0)->where('status',1)
                        ->where('trash_status',0)->where('approve_status',1)
                        ->where('category',6)->orderBy('id','desc')->limit(1)->get();
                
                
                        $intTwo = \App\Models\News::where('publish_site',0)->where('status',1)
                        ->where('trash_status',0)->where('approve_status',1)
                        ->where('category',6)->orderBy('id','desc')->skip(1)->take(3)->get();


                        $intThree = \App\Models\News::where('publish_site',0)->where('status',1)
                        ->where('trash_status',0)->where('approve_status',1)
                        ->where('category',6)->orderBy('id','desc')->skip(4)->take(4)->get();
                                        
                                        
                                        ?>


                    <div class="DCommonCatS1">
                        <div class="row">
                            <div class="col-lg-8 col-12 border-right-inner">
                                <div class="DCommonCatS2Top">
                                    @foreach($intOne as $secondSectionNewss)
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="row">
                                            <div class="col-lg-8 col-12">
                                                <div class="Imgresize">
                                                    <figure class="ImgViewer">
                                                        <picture class="FixingRatio"><img
                                                                    data-src="#"
                                                                    src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                                    class="img-responsive img100 ImgRatio"></picture>
                                                    </figure>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-12 order-lg-first">
                                                <div class="Desc">
                                                    <h1 class="Title">{{ $secondSectionNewss->title }}</h1>
                                                    <div class="Brief"><p>{!!  substr(strip_tags($secondSectionNewss->des), 0, 300) !!}</p></div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    @endforeach
                                </div>
                            </div>
                            <div class="col-lg-4 col-12">
                                <div class="DCommonCatS2List">
                                    @foreach($intTwo as $secondSectionNewss)
                                    <div class="DCommonCatS2ListItem">
                                        <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                            <div class="row">
                                                <div class="col-lg-5 col-sm-3 col-5">
                                                    <div class="Imgresize">
                                                        <figure class="ImgViewer">
                                                            <picture class="FixingRatio"><img
                                                                        data-src="#"
                                                                        src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                                        class="img-responsive img100 ImgRatio">
                                                            </picture>
                                                        </figure>
                                                    </div>
                                                </div>
                                                <div class="col-lg-7 col-sm-9 col-7">
                                                    <div class="Desc"><h2 class="Title">{{ $secondSectionNewss->title }}</h2></div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    @endforeach
                                   
                                </div>
                            </div>
                        </div>
                        <div class="DCommonCatS2Top3">
                            <div class="row">
                                @foreach($intThree as $secondSectionNewss)
                                <div class="col-lg-3 col-12 border-right-inner">
                                    <div class="DCommonCatS2Top3List">
                                        <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                            <div class="Desc">
                                                <h3 class="Title">{{ $secondSectionNewss->title }}</h3>
                                                <div class="Brief"><p>{!!  substr(strip_tags($secondSectionNewss->des), 0, 400) !!}</p></div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                @endforeach
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!--ExtraDIV-->
        </section>

        <!-- Politics Section  -->
        <section class="National + Politics mt-5">
            <div class="row">
                <div class="col-lg-9 border-right-inner">
                    <div class="SectionTitle"><h3>
                            <a href="{{ route('news',base64_encode(7)) }}">Politics<i class="ti-infinite"></i></a>
                        </h3></div>

                        <?php    
                        
                        $polOne = \App\Models\News::where('publish_site',0)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)
        ->where('category',7)->orderBy('id','desc')->limit(1)->get();


        $polTwo = \App\Models\News::where('publish_site',0)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)
        ->where('category',7)->orderBy('id','desc')->skip(1)->take(4)->get();
                        
                        
                        ?>

                    <div class="DCommonCatS1">
                        <div class="row">
                            <div class="col-lg-7 col-12 border-right-inner">
                                <div class="DCommonCatS1Top">
                                    @foreach($polOne as $secondSectionNewss)
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="Imgresize">
                                            <figure class="ImgViewer">
                                                <picture class="FixingRatio"><img
                                                            data-src="#"
                                                            src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                            class="img-responsive img100 ImgRatio"></picture>
                                            </figure>
                                        </div>
                                        <div class="Desc">
                                            <h3 class="Title">{{ $secondSectionNewss->title }}</h3>
                                            <div class="Brief"><p>{!!  substr(strip_tags($secondSectionNewss->des), 0, 400) !!}</p></div>
                                        </div>
                                    </a>
                                    @endforeach
                                </div>
                            </div>
                            <div class="col-lg-5 col-12">
                                <div class="DCommonCatS1List">

                                    @foreach($polTwo as $secondSectionNewss)
                                    <div class="DCommonCatS1ListItem">
                                        <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                            <div class="row">
                                                <div class="col-lg-7 col-sm-9 col-7">
                                                    <div class="Desc"><h2 class="Title">{{ $secondSectionNewss->title }}</h2></div>
                                                </div>
                                                <div class="col-lg-5 col-sm-3 col-5">
                                                    <div class="Imgresize">
                                                        <figure class="ImgViewer">
                                                            <picture class="FixingRatio"><img
                                                                        data-src="#"
                                                                        src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                                        class="img-responsive img100 ImgRatio">
                                                            </picture>
                                                        </figure>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    @endforeach
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-12">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="DAdd3">
                                <a href="https://pfrcbd.com/" target="_blank"><img
                                            src="{{ asset('/') }}public/front/assets/images/news.jpg" alt="pfrcbd" title="pfrcbd"
                                            class="img-fluid img100"></a>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="DAdd3">
                                <a href="https://www.ovijatfood.com/" target="_blank"><img
                                            src="{{ asset('/') }}public/front/assets/images/news.jpg" alt="Ovijat"
                                            title="Ovijat" class="img-fluid img100"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!--ExtraDIV-->
        </section>


        <section class="Sports">
            <div class="row">
                <div class="col-lg-12">
                    <div class="SectionTitle MT30"><h3><a href="{{ route('news',base64_encode(8)) }}">Sports<i
                                        class="ti-infinite"></i></a></h3></div>

                                        <?php    
                        
                                        $spOne = \App\Models\News::where('publish_site',0)->where('status',1)
                        ->where('trash_status',0)->where('approve_status',1)
                        ->where('category',8)->orderBy('id','desc')->limit(1)->get();
                
                
                        $spTwo = \App\Models\News::where('publish_site',0)->where('status',1)
                        ->where('trash_status',0)->where('approve_status',1)
                        ->where('category',8)->orderBy('id','desc')->skip(1)->take(1)->get();


                        $spThree = \App\Models\News::where('publish_site',0)->where('status',1)
                        ->where('trash_status',0)->where('approve_status',1)
                        ->where('category',8)->orderBy('id','desc')->skip(2)->take(4)->get();
                                        
                                        
                                        ?>


                    <div class="DSports">
                        <div class="row">
                            <div class="col-lg-9 col-12 border-right-inner">
                                <div class="DSportsTop">
                                    @foreach($spOne as $secondSectionNewss)
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="row">
                                            <div class="col-lg-8 col-12">
                                                <div class="Imgresize">
                                                    <figure class="ImgViewer">
                                                        <picture class="FixingRatio"><img
                                                                    data-src="#"
                                                                    src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                                    class="img-responsive img100 ImgRatio"></picture>
                                                    </figure>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-12 order-lg-first">
                                                <div class="Desc">
                                                    <h3 class="Title">{{ $secondSectionNewss->title }}</h3>
                                                    <div class="Brief"><p>{!!  substr(strip_tags($secondSectionNewss->des), 0, 400) !!}</p></div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    @endforeach
                                </div>
                            </div>
                            <div class="col-lg-3 col-12 d-flex">
                                <div class="DSportsTop2 align-self-stretch">
                                    @foreach($spTwo as $secondSectionNewss)
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="row">
                                            <div class="col-lg-12 col-sm-3 col-5">
                                                <div class="Imgresize">
                                                    <figure class="ImgViewer">
                                                        <picture class="FixingRatio"><img
                                                                    data-src="#"
                                                                    src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                                    class="img-responsive img100 ImgRatio"></picture>
                                                    </figure>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-sm-9 col-7">
                                                <div class="Desc">
                                                    <h3 class="Title">{{ $secondSectionNewss->title }}</h3>
                                                    <div class="Brief"><p>{!!  substr(strip_tags($secondSectionNewss->des), 0, 300) !!}</p></div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                        <div class="DSportsTop3">
                            <div class="row">

                                @foreach($spThree as $secondSectionNewss)
                                <div class="col-lg-3 col-12 d-flex border-right-inner">
                                    <div class="DSportsTop3List align-self-stretch">
                                        <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                            <div class="row">
                                                <div class="col-lg-12 col-sm-3 col-5">
                                                    <div class="Imgresize">
                                                        <figure class="ImgViewer">
                                                            <picture class="FixingRatio"><img
                                                                        data-src="#"
                                                                        src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                                        class="img-responsive img100 ImgRatio">
                                                            </picture>
                                                        </figure>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12 col-sm-9 col-7">
                                                    <div class="Desc"><h3 class="Title">{{ $secondSectionNewss->title }}</h3></div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                @endforeach
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="Countrywide">
            <div class="row">
                <div class="col-lg-12">
                    <div class="SectionTitle MT30"><h3>
                            <a href="{{ route('news',base64_encode(9)) }}">Whole Country<i
                                        class="ti-infinite"></i></a></h3></div>


                                        <?php    
                        
                                        $conOne = \App\Models\News::where('publish_site',0)->where('status',1)
                        ->where('trash_status',0)->where('approve_status',1)
                        ->where('category',9)->orderBy('id','desc')->limit(1)->get();
                
                
                        $conTwo = \App\Models\News::where('publish_site',0)->where('status',1)
                        ->where('trash_status',0)->where('approve_status',1)
                        ->where('category',9)->orderBy('id','desc')->skip(1)->take(3)->get();


                        $conThree = \App\Models\News::where('publish_site',0)->where('status',1)
                        ->where('trash_status',0)->where('approve_status',1)
                        ->where('category',9)->orderBy('id','desc')->skip(4)->take(4)->get();
                                        
                                        
                                        ?>


                    <div class="DCommonCatS2">
                        <div class="row">
                            <div class="col-lg-8 col-12 border-right-inner">
                                <div class="DCommonCatS2Top">
                                    @foreach($conOne as $secondSectionNewss)
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="row">
                                            <div class="col-lg-8 col-12">
                                                <div class="Imgresize">
                                                    <figure class="ImgViewer">
                                                        <picture class="FixingRatio"><img
                                                                    data-src="#"
                                                                    src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                                    class="img-responsive img100 ImgRatio"></picture>
                                                    </figure>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-12 order-lg-first">
                                                <div class="Desc">
                                                    <h1 class="Title">{{ $secondSectionNewss->title }}</h1>
                                                    <div class="Brief"><p>{!!  substr(strip_tags($secondSectionNewss->des), 0, 400) !!}</p></div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    @endforeach
                                </div>
                            </div>
                            <div class="col-lg-4 col-12">
                                <div class="DCommonCatS2List">
                                    @foreach($conTwo as $secondSectionNewss)
                                    <div class="DCommonCatS2ListItem">
                                        <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                            <div class="row">
                                                <div class="col-lg-5 col-sm-3 col-5">
                                                    <div class="Imgresize">
                                                        <figure class="ImgViewer">
                                                            <picture class="FixingRatio"><img
                                                                        data-src="#"
                                                                        src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                                        class="img-responsive img100 ImgRatio">
                                                            </picture>
                                                        </figure>
                                                    </div>
                                                </div>
                                                <div class="col-lg-7 col-sm-9 col-7">
                                                    <div class="Desc"><h2 class="Title">{{ $secondSectionNewss->title }}</h2></div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    @endforeach
                                   
                                </div>
                            </div>
                        </div>
                        <div class="DCommonCatS2Top3">
                            <div class="row">

                                @foreach($conThree as $secondSectionNewss)
                                <div class="col-lg-3 col-12 border-right-inner">
                                    <div class="DCommonCatS2Top3List">
                                        <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                            <div class="Desc">
                                                <h3 class="Title">{{ $secondSectionNewss->title }}</h3>
                                                <div class="Brief"><p>{!!  substr(strip_tags($secondSectionNewss->des), 0, 300) !!}</p></div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                @endforeach
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="Business">
            <div class="row">
                <div class="col-lg-12">
                    <div class="SectionTitle MT30"><h3><a href="{{ route('news',base64_encode(10)) }}">Economy<i class="ti-infinite"></i></a>
                        </h3></div>

                        <?php    
                        
                        $ecoOne = \App\Models\News::where('publish_site',0)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)
        ->where('category',10)->orderBy('id','desc')->limit(1)->get();


        $ecoTwo = \App\Models\News::where('publish_site',0)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)
        ->where('category',10)->orderBy('id','desc')->skip(1)->take(1)->get();


        $ecoThree = \App\Models\News::where('publish_site',0)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)
        ->where('category',10)->orderBy('id','desc')->skip(2)->take(4)->get();
                        
                        
                        ?>

                    <div class="DSports">
                        <div class="row">
                            <div class="col-lg-9 col-12 border-right-inner">
                                <div class="DSportsTop">
                                    @foreach($ecoOne as $secondSectionNewss)
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="row">
                                            <div class="col-lg-8 col-12">
                                                <div class="Imgresize">
                                                    <figure class="ImgViewer">
                                                        <picture class="FixingRatio"><img
                                                                    data-src="#"
                                                                    src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                                    class="img-responsive img100 ImgRatio">
                                                        </picture>
                                                    </figure>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-12 order-lg-first">
                                                <div class="Desc">
                                                    <h3 class="Title">{{ $secondSectionNewss->title }}</h3>
                                                    <div class="Brief"><p>{!!  substr(strip_tags($secondSectionNewss->des), 0, 400) !!}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    @endforeach
                                </div>
                            </div>
                            <div class="col-lg-3 col-12 d-flex">
                                <div class="DSportsTop2 align-self-stretch">
                                    @foreach($ecoTwo as $secondSectionNewss)
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="row">
                                            <div class="col-lg-12 col-sm-3 col-5">
                                                <div class="Imgresize">
                                                    <figure class="ImgViewer">
                                                        <picture class="FixingRatio"><img
                                                                    data-src="#"
                                                                    src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                    alt="{{ $secondSectionNewss->image_caption }}"
                                                                    title="{{ $secondSectionNewss->title }}"
                                                                    class="img-responsive img100 ImgRatio"></picture>
                                                    </figure>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-sm-9 col-7">
                                                <div class="Desc">
                                                    <h3 class="Title">{{ $secondSectionNewss->title }}</h3>
                                                    <div class="Brief"><p>{!!  substr(strip_tags($secondSectionNewss->des), 0, 300) !!}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                        <div class="DSportsTop3">
                            <div class="row">
                                @foreach($ecoThree as $secondSectionNewss)
                                <div class="col-lg-3 col-12 d-flex border-right-inner">
                                    <div class="DSportsTop3List align-self-stretch">
                                        <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                            <div class="row">
                                                <div class="col-lg-12 col-sm-3 col-5">
                                                    <div class="Imgresize">
                                                        <figure class="ImgViewer">
                                                            <picture class="FixingRatio"><img
                                                                        data-src="#"
                                                                        src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                                        class="img-responsive img100 ImgRatio">
                                                            </picture>
                                                        </figure>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12 col-sm-9 col-7">
                                                    <div class="Desc"><h3 class="Title">{{ $secondSectionNewss->title }}</h3></div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                @endforeach
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="Entertainment">
            <div class="row">
                <div class="col-lg-12">
                    <div class="SectionTitle MT30"><h3><a href="{{ route('news',base64_encode(11)) }}">Entertainment<i
                                        class="ti-infinite"></i></a></h3></div>

                                        <?php    
                        
                                        $eOne = \App\Models\News::where('publish_site',0)->where('status',1)
                        ->where('trash_status',0)->where('approve_status',1)
                        ->where('category',11)->orderBy('id','desc')->limit(5)->get();
                
                
                        $eTwo = \App\Models\News::where('publish_site',0)->where('status',1)
                        ->where('trash_status',0)->where('approve_status',1)
                        ->where('category',11)->orderBy('id','desc')->skip(5)->take(1)->get();
                
                
                        $eThree = \App\Models\News::where('publish_site',0)->where('status',1)
                        ->where('trash_status',0)->where('approve_status',1)
                        ->where('category',11)->orderBy('id','desc')->skip(6)->take(3)->get();
                                        
                                        
                                        ?>

                    <div class="DShowbiz">
                        <div class="row">
                            <div class="col-lg-8 col-12">
                                <div class="DEntertainmentTop">
                                    @foreach($eTwo as $secondSectionNewss)
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="row">
                                            <div class="col-lg-8 col-12">
                                                <div class="Imgresize">
                                                    <figure class="ImgViewer">
                                                        <picture class="FixingRatio"><img
                                                                    data-src="#"
                                                                    src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                                    class="img-responsive img100 ImgRatio"></picture>
                                                    </figure>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-12">
                                                <div class="Desc">
                                                    <h3 class="Title">{{ $secondSectionNewss->title }}</h3>
                                                    <div class="Brief"><p>{!!  substr(strip_tags($secondSectionNewss->des), 0, 300) !!}</p></div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    @endforeach
                                </div>
                                <div class="DEntertainmentTop2">
                                    <div class="row">
                                        @foreach($eThree as $secondSectionNewss)
                                        <div class="col-lg-4 col-12 d-flex border-right-inner">
                                            <div class="DEntertainmentTop2List align-self-stretch">
                                                <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                                    <div class="row">
                                                        <div class="col-lg-12 col-sm-3 col-5">
                                                            <div class="Imgresize">
                                                                <figure class="ImgViewer">
                                                                    <picture class="FixingRatio"><img
                                                                                data-src="#"
                                                                                src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                                alt="{{ $secondSectionNewss->image_caption }}"
                                                                                title="{{ $secondSectionNewss->title }}"
                                                                                class="img-responsive img100 ImgRatio">
                                                                    </picture>
                                                                </figure>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12 col-sm-9 col-7">
                                                            <div class="Desc"><h3 class="Title">{{ $secondSectionNewss->title }}</h3></div>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        @endforeach
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-12 border-right-inner order-lg-first">
                                <div class="DEntertainmentList">

                                    @foreach($eOne as $secondSectionNewss)
                                    <div class="DEntertainmentListItem">
                                        <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                            <div class="row">
                                                <div class="col-lg-5 col-sm-3 col-5">
                                                    <div class="Imgresize">
                                                        <figure class="ImgViewer">
                                                            <picture class="FixingRatio"><img
                                                                        data-src="#"
                                                                        src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                                        class="img-responsive img100 ImgRatio">
                                                            </picture>
                                                        </figure>
                                                    </div>
                                                </div>
                                                <div class="col-lg-7 col-sm-9 col-7">
                                                    <div class="Desc"><h2 class="Title">{{ $secondSectionNewss->title }}</h2></div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    @endforeach
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <div class="CommonCatArea2">
            <section class="Science & IT + Education + Law & Court">
                <div class="row">
                    <div class="col-lg-4 col-12 border-right-inner">
                        <div class="SectionTitle"><h3><a href="{{ route('news',base64_encode(12)) }}">Science & Tecnology<i
                                            class="ti-infinite"></i></a></h3></div>


                                            <?php    
                        
                                        $bOne = \App\Models\News::where('publish_site',0)->where('status',1)
                        ->where('trash_status',0)->where('approve_status',1)
                        ->where('category',12)->orderBy('id','desc')->limit(1)->get();
                
                
                        $bTwo = \App\Models\News::where('publish_site',0)->where('status',1)
                        ->where('trash_status',0)->where('approve_status',1)
                        ->where('category',12)->orderBy('id','desc')->skip(1)->take(3)->get();
                                        
                                        
                                        ?>


                        <div class="DCatStyle2">
                            <div class="DCatStyle2Top">
                                <div class="col-sm-12 thumbnail">
                                    @foreach($bOne as $secondSectionNewss)
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="Imgresize">
                                            <figure class="ImgViewer">
                                                <picture class="FixingRatio"><img
                                                            data-src="#"
                                                            src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                            class="img-responsive img100 ImgRatio"></picture>
                                            </figure>
                                        </div>
                                        <div class="Desc"><h3 class="Title">{{ $secondSectionNewss->title }}</h3></div>
                                    </a>
                                    @endforeach
                                </div>
                            </div>
                            <div class="DCatStyle2List">

                                @foreach($bTwo as $secondSectionNewss)
                                <div class="DCatStyle2ListItem">
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="row">
                                            <div class="col-lg-4 col-sm-3 col-5">
                                                <div class="Imgresize">
                                                    <figure class="ImgViewer">
                                                        <picture class="FixingRatio"><img
                                                                    data-src="#"
                                                                    src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                    alt="{{ $secondSectionNewss->image_caption }}"
                                                                    title="{{ $secondSectionNewss->title }}"
                                                                    class="img-responsive img100 ImgRatio"></picture>
                                                    </figure>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-sm-9 col-7">
                                                <div class="Desc"><h2 class="Title">{{ $secondSectionNewss->title }}</h2></div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                @endforeach
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-12 border-right-inner">
                        <div class="SectionTitle"><h3><a href="{{ route('news',base64_encode(13)) }}">Education<i
                                            class="ti-infinite"></i></a></h3></div>

                                            <?php    
                        
                                        $edOne = \App\Models\News::where('publish_site',0)->where('status',1)
                        ->where('trash_status',0)->where('approve_status',1)
                        ->where('category',13)->orderBy('id','desc')->limit(1)->get();
                
                
                        $edTwo = \App\Models\News::where('publish_site',0)->where('status',1)
                        ->where('trash_status',0)->where('approve_status',1)
                        ->where('category',13)->orderBy('id','desc')->skip(1)->take(3)->get();
                                        
                                        
                                        ?>


                        <div class="DCatStyle2">
                            <div class="DCatStyle2Top">
                                <div class="col-sm-12 thumbnail">
                                    @foreach($edOne as $secondSectionNewss)
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="Imgresize">
                                            <figure class="ImgViewer">
                                                <picture class="FixingRatio"><img
                                                            data-src="#"
                                                            src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                            class="img-responsive img100 ImgRatio"></picture>
                                            </figure>
                                        </div>
                                        <div class="Desc"><h3 class="Title">{{ $secondSectionNewss->title }}</h3></div>
                                    </a>
                                    @endforeach
                                </div>
                            </div>
                            <div class="DCatStyle2List">
                                @foreach($edTwo as $secondSectionNewss)
                                <div class="DCatStyle2ListItem">
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="row">
                                            <div class="col-lg-4 col-sm-3 col-5">
                                                <div class="Imgresize">
                                                    <figure class="ImgViewer">
                                                        <picture class="FixingRatio"><img
                                                                    data-src="#"
                                                                    src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                    alt="{{ $secondSectionNewss->image_caption }}"
                                                                    title="{{ $secondSectionNewss->title }}"
                                                                    class="img-responsive img100 ImgRatio"></picture>
                                                    </figure>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-sm-9 col-7">
                                                <div class="Desc"><h2 class="Title">{{ $secondSectionNewss->title }}</h2></div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-12">
                        <div class="SectionTitle"><h3><a href="{{ route('news',base64_encode(14)) }}">Crime & Justice<i
                                            class="ti-infinite"></i></a></h3></div>

                                            <?php    
                        
                                            $opOne = \App\Models\News::where('publish_site',0)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)
                            ->where('category',14)->orderBy('id','desc')->limit(1)->get();
                    
                    
                            $opTwo = \App\Models\News::where('publish_site',0)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)
                            ->where('category',14)->orderBy('id','desc')->skip(1)->take(3)->get();
                                            
                                            
                                            ?>

                        <div class="DCatStyle2">
                            <div class="DCatStyle2Top">
                                <div class="col-sm-12 thumbnail">
                                    @foreach($opOne as $secondSectionNewss)
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="Imgresize">
                                            <figure class="ImgViewer">
                                                <picture class="FixingRatio"><img
                                                            data-src="#"
                                                            src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                        alt="{{ $secondSectionNewss->image_caption }}"
                                                                        title="{{ $secondSectionNewss->title }}"
                                                            class="img-responsive img100 ImgRatio"></picture>
                                            </figure>
                                        </div>
                                        <div class="Desc"><h3 class="Title">{{ $secondSectionNewss->title }}</h3></div>
                                    </a>
                                    @endforeach
                                </div>
                            </div>
                            <div class="DCatStyle2List">
                                @foreach($opTwo as $secondSectionNewss)
                                <div class="DCatStyle2ListItem">
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="row">
                                            <div class="col-lg-4 col-sm-3 col-5">
                                                <div class="Imgresize">
                                                    <figure class="ImgViewer">
                                                        <picture class="FixingRatio"><img
                                                                    data-src="#"
                                                                    src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                    alt="{{ $secondSectionNewss->image_caption }}"
                                                                    title="{{ $secondSectionNewss->title }}"
                                                                    class="img-responsive img100 ImgRatio"></picture>
                                                    </figure>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-sm-9 col-7">
                                                <div class="Desc"><h2 class="Title">{{ $secondSectionNewss->title }}</h2></div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <section class="Feature">
            <div class="row">
                <div class="col-lg-12">
                    <div class="CommonCatArea">
                        <div class="SectionTitle"><h3><a href="{{ route('news',base64_encode(16)) }}">Feature<i class="ti-infinite"></i></a>
                            </h3></div>

                            <?php    
                        
                                            $ffOne = \App\Models\News::where('publish_site',0)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)
                            ->where('category',16)->orderBy('id','desc')->limit(4)->get();

                            ?>
                        <div class="DCatStyle1TopArea">
                            <div class="row">
                                @foreach($ffOne as $secondSectionNewss)
                                <div class="col-lg-3 col-12 border-right-inner d-flex">
                                    <div class="DCatStyle1TopNews align-self-stretch">
                                        <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                            <div class="row">
                                                <div class="col-lg-12 col-sm-3 col-5">
                                                    <div class="Imgresize">
                                                        <figure class="ImgViewer">
                                                            <picture class="FixingRatio"><img
                                                                        data-src="#"
                                                                        src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                    alt="{{ $secondSectionNewss->image_caption }}"
                                                                    title="{{ $secondSectionNewss->title }}"
                                                                        class="img-responsive img100 ImgRatio">
                                                            </picture>
                                                        </figure>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12 col-sm-9 col-7">
                                                    <div class="Desc"><h3 class="Title">{{ $secondSectionNewss->title }}</h3></div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                @endforeach
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="PhotoStory + Videogallery">
            <div class="CommonCatArea2">
                <div class="row">
                    <div class="col-lg-8 col-12 border-right-inner">
                        <div class="SectionTitle"><h3><a href="{{ route('subCategoryNews',base64_encode(15)) }}">Photo<i
                                            class="ti-infinite"></i></a></h3></div>

                                            <?php    
                        
                                            $imageOne = \App\Models\News::where('publish_site',0)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)
                            ->where('sub_category',15)->orderBy('id','desc')->get();

                            ?>

                        <div class="DPhotoGallerySection">
                            <div id="carouselExampleControls2" class="carousel slide" data-bs-ride="carousel">
                                <div class="carousel-inner">

                                    @foreach($imageOne as $key=>$secondSectionNewss)

                                    @if($key == 0)
                                    <div class="carousel-item active">
                                        @else
                                        <div class="carousel-item ">
                                        @endif
                                        <div class="DPhotoGalleryList">
                                            <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                                <div class="Imgresize">
                                                    <figure class="ImgViewer">
                                                        <picture class="FixingRatio"><img
                                                            src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                            alt="{{ $secondSectionNewss->image_caption }}"
                                                            title="{{ $secondSectionNewss->title }}"
                                                                    class="img-responsive img100 ImgRatio"></picture>
                                                    </figure>
                                                </div>
                                                <div class="card-video-img transition"></div>
                                                <div class="carousel-caption">
                                                    <h3 class="Title">{{ $secondSectionNewss->title }}</h3>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    @endforeach
                                    
                                    <button class="carousel-control-prev" type="button"
                                            data-bs-target="#carouselExampleControls2" data-bs-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Previous</span>
                                    </button>
                                    <button class="carousel-control-next" type="button"
                                            data-bs-target="#carouselExampleControls2" data-bs-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Next</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-12">
                        <div class="SectionTitle"><h3><a href="{{ route('subCategoryNews',base64_encode(16)) }}">Video<i
                                            class="ti-infinite"></i></a></h3></div>

                                            <?php    
                        
                                            $videoOne = \App\Models\News::where('publish_site',0)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)
                            ->where('sub_category',16)->orderBy('id','desc')->limit(1)->get();


                            $videoTwo = \App\Models\News::where('publish_site',0)->where('status',1)
                            ->where('trash_status',0)->where('approve_status',1)
                            ->where('sub_category',16)->orderBy('id','desc')->skip(1)->take(2)->get();

                            ?>


                        <div class="DVideoGallery">
                            <div class="DVideoSec">
                                <div class="DVideoGalleryTop">
                                    @foreach($videoOne as $key=>$secondSectionNewss)
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="Imgresize">
                                            <figure class="ImgViewer">
                                                <iframe width="330" height="160"
                                    src="{{ $secondSectionNewss->image_caption }}" title="YouTube video player"
                                    frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                            </figure>
                                        </div>
                                        <div class="card-video-img transition"></div>
                                        <div class="Desc"><h3 class="Title">{{ $secondSectionNewss->title }}</h3></div>
                                    </a>
                                    @endforeach
                                </div>
                            </div>
                            @foreach($videoTwo as $key=>$secondSectionNewss)
                            <div class="DVideoGalleryList">
                                <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                    <div class="row">
                                        <div class="col-lg-5 col-sm-3 col-5">
                                            <div class="Imgresize">
                                                <figure class="ImgViewer">
                                                    <iframe width="100" height="100"
                                        src="{{ $secondSectionNewss->image_caption }}" title="YouTube video player"
                                        frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                                </figure>
                                            </div>
                                            <div class="card-video-img transition"></div>
                                        </div>
                                        <div class="col-lg-7 col-sm-9 col-7">
                                            <div class="Desc"><h3 class="Title">{{ $secondSectionNewss->title }}</h3></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            @endforeach
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>
</main>
@endsection
@section('script')

@endsection
