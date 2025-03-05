<!doctype html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
      <!--for facebook share-->

      @if(Route::is('index'))
      <meta property="og:url"           content="{{ $ins_url }}" />
      <meta property="og:type"          content="NEWS" />
      <meta property="og:title"         content="{{ $ins_name }}-" />
      <meta property="og:description"   content="{{ $ins_name }} is one of the most reliable and popular local daily newspaper. We provide latest reliable local news about various categories for 24/7 days." />
      <meta property="og:image"         content="{{ asset('/') }}{{ $logo }}"  />
      @elseif(Route::is('newsDetail'))

  <meta property="og:url"           content="{{ route('newsDetail',$latestNewsDetail->id ) }}" />
  <meta property="og:type"          content="{{ $latestNewsDetail->title }} - " />
  <meta property="og:title"         content="{{ $latestNewsDetail->title }}." />
  <meta property="og:description"   content="{!!  substr(strip_tags($latestNewsDetail->des), 0, 300) !!}" />
  <meta property="og:image"         content="{{asset('/')}}{{$latestNewsDetail->image}}"  />
  <meta property="og:image:width" content="720" />
<meta property="og:image:height" content="720" />

      @endif


  <meta property="og:image:width" content="200"/>
  <meta property="og:image:height" content="200"/>

     <title>@yield('title')</title>
      <!--end for facebook share-->

      <link rel="icon" href="{{ asset('/') }}{{ $icon }}" />

    <link href="https://fonts.googleapis.com/css2?family=PT+Serif:wght@400;700&amp;display=swap" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="{{ asset('/') }}public/front/assets/bootstrap-5.0.1-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
          integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" type="text/css" href="{{ asset('/') }}public/front/assets/css/doinik_barta.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('/') }}public/front/assets/css/SolaimanLipi.css">
@yield('css')
</head>

<body>
    <?php
    date_default_timezone_set('Asia/Dhaka');
    $currentDay =date("l");
    $currentDate = date("j F Y , h:i মিনিট",time());
    $engDATE = array('1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 'January', 'February', 'March', 'April',
        'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December', 'Saturday', 'Sunday',
        'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday');
    $bangDATE = array('১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯', '০', 'জানুয়ারী', 'ফেব্রুয়ারী', 'মার্চ', 'এপ্রিল', 'মে',
        'জুন', 'জুলাই', 'আগস্ট', 'সেপ্টেম্বর', 'অক্টোবর', 'নভেম্বর', 'ডিসেম্বর', 'শনিবার', 'রবিবার', 'সোমবার', 'মঙ্গলবার', '
    বুধবার', 'বৃহস্পতিবার', 'শুক্রবার'
    );
    $convertedDATE = str_replace($engDATE, $bangDATE, $currentDate);
    $convertedday = str_replace($engDATE, $bangDATE, $currentDay);

    ?>
<!--Header Section-->

<header>
    @include('front.include.header')
    @include('front.include.mobile')
</header>

@include('front.include.headline')

@yield('body')

<!--footer section-->
@include('front.include.footer')


<script type="text/javascript" src="{{ asset('/') }}public/front/assets/jquery-3.6.0/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="{{ asset('/') }}public/front/assets/js/popper.min.js"></script>
<script type="text/javascript" src="{{ asset('/') }}public/front/assets/bootstrap-5.0.1-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="{{ asset('/') }}public/front/assets/js/doinik_barta.js"></script>
<script type="text/javascript">
    // search-top-js
    $(document).ready(function () {
        $(".fa-search").click(function () {
            $(".search-box").toggle();
            $("input[type='text']").focus();
        });
    });
</script>
<script type="text/javascript">
    //For Lazy Load
    $(function () {
        //Custom fadeIn Duration
        $('img').loadScroll(300);
    });
</script>
@yield('script')
</body>

</html>
