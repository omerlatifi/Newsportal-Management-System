<div class="container MobileHide">
    <div class="DLogoArea">
        <div class="row">
            <div class="col-md-4">
                <div class="DateTime h-100 d-flex align-items-center ">
                    <p class="date">
                        <i class="fa fa-map-marker" aria-hidden="true"></i> ঢাকা, &nbsp;{{ $convertedday }}<br>
                        <i class="fa fa-calendar" aria-hidden="true"></i><span> </span> {{ $convertedDATE }}</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="DLogo d-flex justify-content-center">
                    <a href="{{ route('index') }}">
                        <img src="{{ asset('/') }}{{ $logo }}" alt="Sweety News" title="Sweety News "
                             class="img-fluid img100">
                    </a>
                </div>
            </div>
            <div class="col-md-4 text-end">
                <div class="HeaderTopSocial h-100 d-flex align-items-center justify-content-end">
                    <div class="DSocialLink">
                        <ul>
                            <li><a href="{{ $eng_ins_url }}" class="BanglaButton">English</button></a></li>
@foreach($getLinks as $getLinkss)

@if($getLinkss->title == 'facebook')
<li><a href="{{ $getLinkss->link }}" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
@elseif($getLinkss->title == 'x')
<li><a href="{{ $getLinkss->link }}" target="_blank"><i class="fab fa-twitter"></i></a></li>
@elseif($getLinkss->title == 'youtube')
<li><a href="{{ $getLinkss->link }}" target="_blank"><i class="fab fa-youtube"></i></a></li>
@else
<li><a href="{{ $getLinkss->link }}" target="_blank"><i class="fab fa-instagram"></i></a></li>

@endif
@endforeach




                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="myHeader" class="MobileHide">
    <div class="DHeaderNav">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav m-auto">
                                <li class="nav-item">
                                    <a class="nav-link" aria-current="page" href="{{ route('index') }}"><i
                                            class="fa fa-home" aria-hidden="true"></i></a></li>

@foreach($headerCat as $headerCats)
<?php

$subcatList = \App\Models\SubCategory::where('category_id',$headerCats->id)->get();


?>
@if(count($subcatList) == 0)
                                <li class="nav-item"><a class="nav-link" href="{{ route('news',base64_encode($headerCats->id)) }}">{{ $headerCats->category_name }}</a>
                                </li>
                                @else
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="{{ route('news',base64_encode($headerCats->id)) }}"
                                       id="navbarDropdown" role="button" data-bs-toggle="dropdown disable"
                                       aria-expanded="false">{{ $headerCats->category_name }}</a>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">

                                        @foreach($subcatList as $subcatLists)
                                        <li><a class="dropdown-item" href="{{ route('subCategoryNews',base64_encode($subcatLists->id)) }}">{{ $subcatLists->subcategory_name }}</a></li>
                                        @endforeach

                                    </ul>
                                </li>
                                @endif
                                @endforeach

                            </ul>
                            <div class="d-flex justify-content-end SearchArea">
                                <a href="#"><i class="fa fa-search"
                                               aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
