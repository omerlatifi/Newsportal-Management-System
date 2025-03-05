@if ($message = Session::get('success'))

<div id="divID" class="alert alert-success alert-dismissible fade show" role="alert">
    <i class="uil uil-check me-2"></i>
    {{ $message }}
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">

    </button>
</div>

@endif

@if ($message = Session::get('error'))
<div id="divID" class="alert alert-danger alert-dismissible fade show" role="alert">
    <i class="uil uil-exclamation-octagon me-2"></i>
    {{ $message }}
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">

    </button>
</div>
@endif

@if ($message = Session::get('warning'))
<div id="divID" class="alert alert-warning alert-dismissible fade show" role="alert">
    <i class="uil uil-check me-2"></i>
    {{ $message }}
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">

    </button>
</div>
@endif

@if ($message = Session::get('info'))
<div class="alert alert-info alert-dismissible fade show" role="alert">
    <i class="uil uil-check me-2"></i>
    {{ $message }}
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">

    </button>
</div>
@endif

@if ($errors->any())
<div class="alert alert-danger alert-dismissible fade show" role="alert">
    <i class="uil uil-exclamation-octagon me-2"></i>
Please Check The Below Error
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">

    </button>
</div>
@endif
