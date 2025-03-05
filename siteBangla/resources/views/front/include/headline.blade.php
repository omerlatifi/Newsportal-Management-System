<section>
    <div class="container">
        <div class="DScroll">
            <div class="DScrollSection">
                <div class="ScrollHeading d-flex justify-content-center"><p>শিরোনাম:</p></div>
                <div class="ScrollSubject">
                    <marquee onmouseover="this.stop();" onmouseout="this.start();">
                        @foreach($newsListHeadLine as $newsListHeadLines)
                        <a href="{{ route('newsDetail',$newsListHeadLines->title_slug) }}"><span> * {{ $newsListHeadLines->title }}</span></a>
                        @endforeach
                    </marquee>
                </div>
            </div>
        </div>
    </div>
</section>
