@extends('admin.master.master')

@section('title')
Setting
@endsection


@section('body')
<!-- Content Header (Page header) -->
<div class="content-body">
    <div class="container-fluid">
         <div class="page-titles">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Setting Information</h4>
        </div>

    </div>
    <div class="row">


        <div class="col-lg-12 col-md-12 col-sm-12">
            <div style="text-align: right;">
                <a type="button" class="btn btn-primary " href="{{ route('passwordEdit') }}">Password Edit</a>
            </div>
        </div>

    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    @include('flash_message')
                    <form action="{{ route('setting.store') }}" method="post" enctype="multipart/form-data" id="form">
                        @csrf
<div class="row mb-2">
<div class="profile-title">
  <div class="media">
  

@if(empty(Auth::guard('admin')->user()->admin_image))
{{-- <img src="{{asset('/')}}public/admin/user.png" alt="user-img" class="img-70 rounded-circle" style="height: 100px;"/> --}}
@else
{{-- <img src="{{asset('/')}}{{ Auth::guard('admin')->user()->admin_image }}" alt="img-70 rounded-circle" class="img-fluid" /> --}}
@endif



    {{-- <div class="media-body">
      <h3 class="mb-1 f-20 txt-primary">{{ Auth::guard('admin')->user()->admin_name }}</h3>
      <p class="f-12">{{ $designationName }}</p>
    </div> --}}
  </div>
</div>
</div>

<div class="mb-3">
<label class="form-label">Name:</label>
<input type="text" class="form-control" value="{{ Auth::guard('admin')->user()->admin_name }}" name="admin_name"/>
<input type="hidden" class="form-control" value="{{ Auth::guard('admin')->user()->id }}" name="id"/>
</div>


{{-- <div class="mb-3">
<label class="form-label">বাংলা নাম:</label>
<input type="text" class="form-control" value="{{ Auth::guard('admin')->user()->admin_name_ban }}" name="admin_name_ban"/>

</div> --}}


<div class="mb-3">
<label class="form-label">Mobile:</label>
<input type="text" class="form-control" value="{{ Auth::guard('admin')->user()->admin_mobile }}" name="admin_mobile"/>
</div>
<div class="mb-3">
<label class="form-label">Email:</label>
<input type="text" class="form-control" value="{{ Auth::guard('admin')->user()->email }}" name="email"/>
</div>


<div class="mb-3">
<label class="form-label">Profile:</label>
<input type="file" class="form-control"  name="admin_image"/>
<div class="avatar-lg">
@if(empty(Auth::guard('admin')->user()->admin_image))
<img src="{{asset('/')}}public/admin/user.png" alt="user-img" class="" style="height:50px;"/>
@else
<img src="{{asset('/')}}{{ Auth::guard('admin')->user()->admin_image }}" alt="user-img" class="" style="height:50px;" />
@endif
</div>
</div>


{{-- <div class="mb-3">
<label class="form-label">স্বাক্ষর:</label>
<input type="file" class="form-control"  name="admin_sign"/>
<div class="avatar-lg">
@if(empty(Auth::guard('admin')->user()->admin_sign))
<img src="{{asset('/')}}public/admin/user.png" alt="user-img" class="" style="height:50px;"/>
@else
<img src="{{asset('/')}}{{ Auth::guard('admin')->user()->admin_sign }}" alt="user-img" class="" style="height:50px;" />
@endif
</div>
</div> --}}


<div class="form-footer">
<button class="btn btn-primary btn-block">Update</button>
</div>
</form>
</div>
                </div>
            </div>
        </div>
    </div>
</section>
</div>
</div>

@endsection

@section('script')
@endsection

