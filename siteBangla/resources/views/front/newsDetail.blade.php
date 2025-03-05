@extends('front.master.master')

@section('title')
{{ $latestNewsDetail->title }}
@endsection

@section('css')

@endsection

@section('body')
<main>
    <div class="container">
        <section>
            <div class="single-cat-info">
                <div class="single-cat-home"><a href="{{ route('index') }}"><i class="fa fa-home"
                                                                           aria-hidden="true"></i> প্রচ্ছদ </a>
                </div>
                <div class="single-cat-cate"><a href="{{ route('news',base64_encode($latestNewsDetail->category)) }}" rel="category tag"><i class="fa fa-bars"
                                                                                        aria-hidden="true"></i>
                                                                                        {{ \App\Models\Category::where('id',$latestNewsDetail->category)->value('category_name') }}</a></div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12 rowresize" style="flex:0 0 20%;max-width:20%;">
                </div>
                <div class="col-lg-7 col-sm-12 rowresize" style="flex:0 0 56%;max-width:56%;">
                    <div class="DDetailsTitle">
                        <h1>{{ $latestNewsDetail->title }}</h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-sm-12 rowresize" style="flex: 0 0 20%;max-width: 20%;">
                    <div class="AdditionalInfo">
                        <div class="DescTitle">
                            <span class="ColorBox"></span>
                            <h2>{{ \App\Models\Admin::where('id',$latestNewsDetail->admin_id)->value('admin_name') }}</h2>
                            <div></div>
                        </div>
                        <?php 


                        $engDATE = array('1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 'January', 'February', 'March', 'April',
        'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December', 'Saturday', 'Sunday',
        'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday','am','pm');
    $bangDATE = array('১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯', '০', 'জানুয়ারী', 'ফেব্রুয়ারী', 'মার্চ', 'এপ্রিল', 'মে',
        'জুন', 'জুলাই', 'আগস্ট', 'সেপ্টেম্বর', 'অক্টোবর', 'নভেম্বর', 'ডিসেম্বর', 'শনিবার', 'রবিবার', 'সোমবার', 'মঙ্গলবার', '
    বুধবার', 'বৃহস্পতিবার', 'শুক্রবার','পূর্বাহ্ন','অপরাহ্ন '
    );
                        
                        
                        ?>
                        <div class="row">
                            <div class="col-sm-12 text-left pDate">
                                <p>প্রকাশিত: {{str_replace($engDATE, $bangDATE,$latestNewsDetail->create_time)}}, {{ str_replace($engDATE, $bangDATE,date("d F Y", strtotime($latestNewsDetail->create_date)))}}</p>
                                <p>আপডেট: {{str_replace($engDATE, $bangDATE,$latestNewsDetail->create_time)}}, {{ str_replace($engDATE, $bangDATE,date("d F Y", strtotime($latestNewsDetail->create_date)))}}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 col-sm-12 rowresize atPrint100" style="flex: 0 0 56%;max-width: 56%;">
                    <article class="DDetailsContent">
                        <div class="row">
                            <div class="col-sm-12" >

                                @if($latestNewsDetail->video_news == 1)
                                <iframe width="330" height="160"
                                src="{{ $latestNewsDetail->image_caption }}" title="YouTube video player"
                                frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                        </figure>

                                        @else
                                <img src="{{ $admin_ins_url }}{{ $latestNewsDetail->image }}"
                                     alt="{{ $latestNewsDetail->image_caption }}" title="{{ $latestNewsDetail->title }}"
                                     class="img-fluid img100 TopImg">
                                <p class="DDetailsCaption">ছবি: {{ $latestNewsDetail->image_caption }}</p>
                                @endif
                            </div>
                        </div>

                        <div id="contentDetails">
                           
                            {!! $latestNewsDetail->des !!}


                            </div>
                        <p class="WritterInitial">{{ \App\Models\Admin::where('id',$latestNewsDetail->admin_id)->value('admin_name') }}</p>
                        <div class="row hidden-print">
                            <div class="col-sm-12">
                            </div>
                        </div>

                    </article>
                </div>
                <div class="col-lg-3 col-md-12 col-sm-12 hidden-print rowresize"
                     style="flex: 0 0 24%;max-width: 24%;">

                    <section class="DLPSTab2">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-bs-toggle="tab" href="#tabs-1" role="tab"
                                           aria-selected="true">সর্বশেষ</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-bs-toggle="tab" href="#tabs-2" role="tab"
                                           aria-selected="false">জনপ্রিয়</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="panel-body PanelHeight">
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                        <div class="DLatestNews longEnough mCustomScrollbar" data-mcs-theme="dark">
                                            <ul class="LatestList2">

                                                @foreach($latestBanglaNews as $secondSectionNewss)
                                                <li>
                                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                                        <p class="Title">{{ $secondSectionNewss->title }}</p>
                                                    </a>
                                                </li>
                                                @endforeach
                                               
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="tabs-2" role="tabpanel">
                                        <div class="DLatestNews longEnough mCustomScrollbar" data-mcs-theme="dark">
                                            <ul class="LatestList2">
                                                @foreach($latestBanglaNewsPopular as $secondSectionNewss)
                                                <li>
                                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                                        <p class="Title">{{ $secondSectionNewss->title }}</p>
                                                    </a>
                                                </li>
                                                @endforeach
                                               
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="allnews">
                            <a href="{{ route('allNews') }}">সব খবর <i class="fa fa-angle-double-right"></i></a>
                        </div>
                    </section>
                </div>
            </div>

            <?php 


          $bdOne22 = \App\Models\News::where('publish_site',1)->where('status',1)
        ->where('trash_status',0)->where('approve_status',1)
        ->where('category',$latestNewsDetail->category)->orderBy('id','desc')->limit(1)->get();
            
            
            
            ?>
            <div class="row">
                <div class="col-sm-12">
                    <div class="DReadMore hidden-print">
                        <p class="catTitle"><span class="ColorBox"></span> আরো পড়ুন &nbsp;</p>
                        <div class="row">

                            @foreach($bdOne22 as $secondSectionNewss)

                            <div class="col-lg-3 col-md-6 col-6 d-flex">
                                <div class="DReadMoreList align-self-stretch">
                                    <a href="#">
                                        <div class="Imgresize">
                                            <figure class="ImgViewer">
                                                <picture class="FixingRatio"><img
                                                    src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                    alt="{{ $secondSectionNewss->image_caption }}"
                                                    title="{{ $secondSectionNewss->title }}"
                                                            class="img-fluid img100 ImgRatio"></picture>
                                            </figure>
                                        </div>
                                        <p>{{ $secondSectionNewss->title }}</p>
                                    </a>
                                </div>
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