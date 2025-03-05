<footer>
    <div class="DFooterBgTop mt-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-12 d-flex align-items-center border-right-inner">
                    <div class="DFooterLogo">
                        <a href="{{ route('index') }}"><img src="{{ asset('/') }}{{ $logo }}"
                                                                       alt="Sweety News"
                                                                       title="Sweety News"
                                                                       class="img-fluid img100"></a>
                    </div>
                </div>
                <div class="col-lg-6 col-12 d-flex align-items-center justify-content-center">
                    <div>
                        @foreach($adminPanelList as $adminPanelLists)
                        <p class="editffSemiBold">{{ $adminPanelLists->designation_list_id }}: {{ $adminPanelLists->admin_name }}</p>
                       @endforeach
                    </div>
                </div>
                <div class="col-lg-3 col-12 d-flex align-items-center justify-content-end">
                    <div class="DSocialLink">
                        <ul>

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
    <div class="DFooterBg">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-sm-6 d-flex align-items-center border-right-inner">
                    <div class="DFooterLink">
                        <ul>
                            @foreach($footerCat as $footerCats)
                            <li><a href="{{ route('news',base64_encode($footerCats->id)) }}">{{ $footerCats->category_name }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-6 d-flex align-items-center border-right-inner">
                    <div class="DFooterLink">
                        <ul>
                            @foreach($footerCatOne as $footerCats)
                            <li><a href="{{ route('news',base64_encode($footerCats->id)) }}">{{ $footerCats->category_name }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-6 d-flex align-items-center border-right-inner">
                    <div class="DFooterLink">
                        <ul>
                            @foreach($footerCatTwo as $footerCats)
                            <li><a href="{{ route('news',base64_encode($footerCats->id)) }}">{{ $footerCats->category_name }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-sm-6 d-flex align-items-center border-right-inner">
                    <div class="DFooterLink">
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-12 d-flex align-items-center justify-content-end">
                    <div class="contact">
                        <p>ঠিকানা: {{ $ins_add }}</p>
                        <p>ফোন: <a href="#">{{ $ins_phone }}</a>
                        </p>
                        <p>E-mail: <a
                                href="#"><span
                                    class="__cf_email__"
                                    data-cfemail="{{ $ins_email }}">{{ $ins_email }}</span></a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="DFooterBottomBg">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <p>&copy 2025 - All right &reg; by {{ $ins_name }} | Developed By <a
                            href="mtechltd.com" target="_blank">Omer Latifi</a></p>
                </div>
            </div>
        </div>
    </div>
</footer>


<div id="back_to_top" class="back_to_top on"><span class="go_up"><i style="" class="fa fa-arrow-up"></i></span>
</div>
