<div class="DHeaderMenu MobileMenuShow" id="myHeader2">
    <div class="container TopMenu">
        <div class="row">
            <div class="col-sm-12">
                <div class="DLogoMobile display-flex">
                    <div class="mr-auto menu-left">
                        <i class="fa fa-bars show"></i>
                        <i class="fa fa-times hide" aria-hidden="true"></i>
                    </div>
                    <div class="m-auto LogoDate"><a href="{{ route('index') }}"><img src="{{ asset('/') }}{{ $logo }}"
                                                                          alt="Donik Barta"
                                                                          title="Doinik Barta"
                                                                          class="img-fluid"></a></div>
                    <div class="ml-auto menu-right">
                        <div class="DBanglaButton MobileBtn"><a class="btn btn-danger"
                                                                href="{{ $eng_ins_url }}">EN</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="search_block Hide">
        <div class="container">
            <div class="col-xl p-0">
                <a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
            </div>
        </div>
    </div>
    <div class="container MobileMenu hide">
        <div class="row LiveViewMenu">
            <div class="col-xl">
                <div class="MobileMenuTop">
                    <div class="row pb-4">
                        <div class="col-xl p-0">
                            <div class="MobileDateArea">
                                <p class="date">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i> ঢাকা, &nbsp;{{ $convertedday }}&nbsp;
                                    <i class="fa fa-calendar" aria-hidden="true"></i><span> </span> {{ $convertedDATE }}
                                </p>
                            </div>
                            <div class="MobileMenuSocial d-flex justify-content-center">
                                <div class="DSocialLink DSocialLinkMobile">
                                    <ul>
                                        <li>
                                            <div class="menu-search"><a class="nav-link-search" href="#"><i
                                                        class="fa fa-search"></i></a></div>
                                        </li>

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
                        <div class="col-6">
                            <ul>
                                @foreach($headerCat as $headerCats)
                                <li class="nav-item"><a class="nav-link" href="{{ route('news',base64_encode($headerCats->id)) }}">{{ $headerCats->category_name }}</a></li>
                                @endforeach
                            </ul>
                        </div>
                        <div class="col-6">
                            <ul>

                                @foreach($headerCatSub as $headerCats)
                                <li class="nav-item"><a class="nav-link" href="{{ route('subCategoryNews',base64_encode($headerCats->id)) }}">{{ $headerCats->subcategory_name }}</a>
                                </li>
                                @endforeach

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
