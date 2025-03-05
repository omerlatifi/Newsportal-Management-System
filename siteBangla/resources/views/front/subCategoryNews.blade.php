@extends('front.master.master')

@section('title')
{{ \App\Models\SubCategory::where('id',$id)->value('subcategory_name') }}
@endsection

@section('css')

@endsection

@section('body')

<main>
    <div class="container">
        <div class="single-cat-info">
            <div class="single-cat-home">
                <a href="{{ route('index') }}"><i class="fa fa-home" aria-hidden="true"></i> প্রচ্ছদ</a>
            </div>
            <div class="single-cat-cate">
                <a href="{{ route('subCategoryNews',base64_encode($id)) }}" rel="category tag"><i class="fa fa-bars" aria-hidden="true"></i>
                    {{ \App\Models\SubCategory::where('id',$id)->value('subcategory_name') }}</a>
            </div>
        </div>

        <div class="DCategoryPageTop">
            <div class="row">
                <div class="col-lg-6 col-12 d-flex">
                    <div class="DCatTopNews align-self-stretch">
                        @foreach($newsListOne as $secondSectionNewss)
                        <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                            <div class="Imgresize">

                                @if($secondSectionNewss->video_news == 1)
                                <iframe width="330" height="160"
                                src="{{ $secondSectionNewss->image_caption }}" title="YouTube video player"
                                frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                        </figure>

                                @else
                                <figure class="ImgViewer">
                                    <picture class="FixingRatio"><img
                                        src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                        alt="{{ $secondSectionNewss->image_caption }}"
                                        title="{{ $secondSectionNewss->title }}"
                                                class="img-fluid img100 ImgRatio">
                                    </picture>
                                </figure>
                                @endif
                            </div>
                            <div class="Desc">
                                <h1 class="Title">{{ $secondSectionNewss->title }}</h1>
                                <div class="Brief"><p>{!!  substr(strip_tags($secondSectionNewss->des), 0, 400) !!}</p></div>
                            </div>
                        </a>
                        @endforeach
                    </div>
                </div>
                <div class="col-lg-6 col-12">
                    <div class="DivCatTopNewsList">
                        <div class="row">
                            @foreach($newsListTwo as $secondSectionNewss)
                            <div class="col-lg-6 col-sm-12">
                                <div class="DCatTopNewsList">
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="row">
                                            <div class="col-lg-12 col-5">
                                                <div class="Imgresize">
                                                    @if($secondSectionNewss->video_news == 1)
                                <iframe width="220" height="110"
                                src="{{ $secondSectionNewss->image_caption }}" title="YouTube video player"
                                frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                        </figure>

                                @else
                                <figure class="ImgViewer">
                                    <picture class="FixingRatio"><img
                                        src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                        alt="{{ $secondSectionNewss->image_caption }}"
                                        title="{{ $secondSectionNewss->title }}"
                                                class="img-fluid img100 ImgRatio">
                                    </picture>
                                </figure>
                                @endif
                                                </div>
                                            </div>
                                            <div class="col-lg-12 col-7">
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
        <div class="DCatNewsList3Area">
            <div class="row">
                <div class="col-lg-8 col-sm-12">
                    <section>
                        <p class="catTitle">{{ \App\Models\SubCategory::where('id',$id)->value('subcategory_name') }} বিভাগের সব খবর</p>
                        <div class="row">
                            <div class="col-12">
                                <div class="DTop3Type1">

                                    @foreach($newsListThree as $secondSectionNewss)
                                    <div class="DTop3Type1List">
                                        <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                            <div class="row">
                                                <div class="col-lg-4 col-sm-3 col-5">
                                                    <div class="ImgSection">
                                                        <div class="Imgresize">
                                                            @if($secondSectionNewss->video_news == 1)
                                                            <iframe width="110" height="110"
                                                            src="{{ $secondSectionNewss->image_caption }}" title="YouTube video player"
                                                            frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                                                    </figure>
                            
                                                            @else
                                                            <figure class="ImgViewer">
                                                                <picture class="FixingRatio"><img
                                                                    src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                    alt="{{ $secondSectionNewss->image_caption }}"
                                                                    title="{{ $secondSectionNewss->title }}"
                                                                            class="img-fluid img100 ImgRatio">
                                                                </picture>
                                                            </figure>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-8 col-sm-9 col-7">
                                                    <div class="Desc">
                                                        <h3 class="Title">{{ $secondSectionNewss->title }}</h3>
                                                        <div class="Brief"><p>{!!  substr(strip_tags($secondSectionNewss->des), 0, 300) !!}</p></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    @endforeach
                                    
                                </div>
                            </div>
                        </div>

                        <div class="row mt-4">
                            {{--  <div class="col-lg-8 offset-lg-2 col-12">
                                <div id="btnDiv" class="d-grid gap-2 mt-2 mb-4">
                                    <button id="ajax-more-btn" class="btn btn-lg ButtonBG" type="button">আরো পড়ুন
                                    </button>
                                </div>
                            </div>  --}}
                        </div>
                    </section>
                </div>

                <div class="col-lg-4 col-12">
                    <div class="CategoryMostRead">
                        <div class="LatestHeader"><p>সর্বশেষ</p></div>
                        <ul class="DCatLatestInner">

                            
                            @foreach($latestBanglaNews as $secondSectionNewss)
                            <li>
                                <div class="DCatLatestContent">
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="row">
                                            <div class="col-lg-5 col-5">
                                                <div class="Imgresize">
                                                    @if($secondSectionNewss->video_news == 1)
                                                            <iframe width="140" height="100"
                                                            src="{{ $secondSectionNewss->image_caption }}" title="YouTube video player"
                                                            frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                                                    </figure>
                            
                                                            @else
                                                            <figure class="ImgViewer">
                                                                <picture class="FixingRatio"><img
                                                                    src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                    alt="{{ $secondSectionNewss->image_caption }}"
                                                                    title="{{ $secondSectionNewss->title }}"
                                                                            class="img-fluid img100 ImgRatio">
                                                                </picture>
                                                            </figure>
                                                            @endif
                                                </div>
                                            </div>
                                            <div class="col-lg-7 col-7"><h3 class="Title">{{ $secondSectionNewss->title }}</h3></div>
                                        </div>
                                    </a>
                                </div>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="CategoryMostRead">
                        <div class="LatestHeader"><p>জনপ্রিয়</p></div>
                        <ul class="DCatLatestInner">
                            @foreach($latestBanglaNewsPopular as $secondSectionNewss)
                            <li>
                                <div class="DCatLatestContent">
                                    <a href="{{ route('newsDetail',$secondSectionNewss->title_slug) }}">
                                        <div class="row">
                                            <div class="col-lg-5 col-5">
                                                <div class="Imgresize">
                                                    @if($secondSectionNewss->video_news == 1)
                                                            <iframe width="140" height="100"
                                                            src="{{ $secondSectionNewss->image_caption }}" title="YouTube video player"
                                                            frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                                                    </figure>
                            
                                                            @else
                                                            <figure class="ImgViewer">
                                                                <picture class="FixingRatio"><img
                                                                    src="{{ $admin_ins_url }}{{ $secondSectionNewss->image }}"
                                                                    alt="{{ $secondSectionNewss->image_caption }}"
                                                                    title="{{ $secondSectionNewss->title }}"
                                                                            class="img-fluid img100 ImgRatio">
                                                                </picture>
                                                            </figure>
                                                            @endif
                                                </div>
                                            </div>
                                            <div class="col-lg-7 col-7"><h3 class="Title">{{ $secondSectionNewss->title }}</h3></div>
                                        </div>
                                    </a>
                                </div>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

@endsection