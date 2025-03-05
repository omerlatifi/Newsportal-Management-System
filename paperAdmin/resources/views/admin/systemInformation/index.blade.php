@extends('admin.master.master')

@section('title')
System Information
@endsection


@section('body')


<!--start new code start -->

<div class="content-body">
    <div class="container-fluid">
         <div class="page-titles">
            <h4>System Information</h4>
        </div>
        <!--row-->
        <div class="row">

            @if(count($systemInformation) >= 1)


            @else
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div style="text-align: right;">
                    <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg">Add<span class="btn-icon-end"><i class="fa fa-plus"></i></span></button>
                </div>
            </div>
            @endif
        </div>
        <div class="row mt-3">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <div class="table-responsive">
                            <table id="example3" class="table table-bordered table-hover display nowrap margin-top-10 w-p100">
                                <thead>
                                <tr>
                                    <th>Logo</th>
                                    <th>Icon</th>
                                    <th>Name</th>
                                    <th>Phone Number</th>
                                    <th>Email</th>
                                    <th>Url</th>
                                    <th>Address</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>

                                    @foreach($systemInformation as $key=>$allSystemInformation)
                                <tr>
                                    <td><img src="{{ asset('/') }}{{ $allSystemInformation->system_logo }}" style="height:20px;"/></td>
                                    <td><img src="{{ asset('/') }}{{ $allSystemInformation->system_icon }}" style="height:20px;"/></td>
                                    <td>{{ $allSystemInformation->system_name }}</td>
                                    <td>{{ $allSystemInformation->system_phone }}</td>
                                    <td>{{ $allSystemInformation->system_email }}</td>
                                    <td>

                                        <p>Bangla Site: {{ $allSystemInformation->bangla_link }}</p>
                                        <p>English Site: {{ $allSystemInformation->english_link }}</p>
                                        <p>Admin Panel Site: {{ $allSystemInformation->admin_link }}</p>
                                    </td>
                                    <td>{{ $allSystemInformation->system_address }}</td>
                                    <td>
                                        <a data-bs-toggle="modal" data-bs-target="#exampleModal{{ $key+1 }}" class="btn btn-primary shadow btn-xs sharp me-1"><i class="fa fa-edit"></i></a>


                                        <div class="modal fade" id="exampleModal{{ $key+1 }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-xl">
                                              <div class="modal-content">
                                                <div class="modal-header">
                                                  <h1 class="modal-title fs-5" id="exampleModalLabel">Update </h1>
                                                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <form method="post" action="{{ route('systemInformation.update',$allSystemInformation->id)}}" enctype="multipart/form-data" id="form">
                                                        @csrf
                                                        @method('PUT')
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="mb-4">
                                                                    <label for="formrow-email-input" class="form-label"> Name</label>
                                                                    <input type="text" name="name" value="{{ $allSystemInformation->system_name }}"  class="form-control" placeholder="Name" required>
                                                                    <small></small>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="mb-4">
                                                                    <label for="formFile" class="form-label"> Logo</label>
                                                                    <input name="logo" value="" class="form-control" type="file" id="formFile" >
                                                                    <img src="{{ asset('/') }}{{ $allSystemInformation->system_logo }}" style="height:20px;"/>

                                                                </div>
                                                            </div>


                                                            <div class="col-md-6">
                                                                <div class="mb-4">
                                                                    <label for="formFile" class="form-label"> Icon</label>
                                                                    <input name="icon" value="" class="form-control" type="file" id="formFile" >
                                                                    <img src="{{ asset('/') }}{{ $allSystemInformation->system_icon }}" style="height:20px;"/>
                                                                </div>
                                                            </div>







                                                            <div class="col-md-6">
                                                                <div class="mb-4">
                                                                    <label for="formrow-inputZip" class="form-label">Phone Number</label>
                                                                    <input name="phone" value="{{ $allSystemInformation->system_phone }}"   type="text" class="form-control" id="formrow-inputZip" placeholder="Phone Number" required>
                                                                    <small></small>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="mb-4">
                                                                    <label for="formrow-inputZip" class="form-label">Email</label>
                                                                    <input name="email" value="{{ $allSystemInformation->system_email }}"   type="email" class="form-control" id="formrow-inputZip" placeholder="Email" required>
                                                                    <small></small>
                                                                </div>
                                                            </div>


                                                            <div class="col-md-6">
                                                                <div class="mb-4">
                                                                    <label for="formrow-inputZip" class="form-label">Bangla Site Url</label>
                                                                    <input name="bangla_link" value="{{ $allSystemInformation->bangla_link }}"  type="text" class="form-control" id="formrow-inputZip" placeholder="Url" required>
                                                                    <small></small>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <div class="mb-4">
                                                                    <label for="formrow-inputZip" class="form-label">English Site Url</label>
                                                                    <input name="english_link" value="{{ $allSystemInformation->english_link }}"  type="text" class="form-control" id="formrow-inputZip" placeholder="Url" required>
                                                                    <small></small>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <div class="mb-4">
                                                                    <label for="formrow-inputZip" class="form-label">Admin Url</label>
                                                                    <input name="admin_link"  type="text" value="{{ $allSystemInformation->admin_link }}" class="form-control" id="formrow-inputZip" placeholder="Url" required>
                                                                    <small></small>
                                                                </div>
                                                            </div>


                                                            <div class="col-md-6">
                                                                <div class="mb-4">
                                                                    <label for="formrow-email-input" class="form-label">Address</label>
                                                                    <input name="address" value="{{ $allSystemInformation->system_address }}"   type="text" class="form-control" id="formrow-email-input" placeholder="Address" required>
                                                                </div>
                                                            </div>


                                                        </div>






                                                        <div>
                                                            <button type="submit" class="btn btn-primary btn-sm w-md">Update</button>
                                                        </div>


                                                    </form>
                                                </div>

                                              </div>
                                            </div>
                                          </div>

                                    </td>
                                </tr>
                                @endforeach

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end new code end -->



<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add New Info</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal">
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="{{ route('systemInformation.store') }}" enctype="multipart/form-data" id="form">

                    @csrf

                     <div class="row">
                         <div class="col-md-6">
                             <div class="mb-4">
                                 <label for="formrow-email-input" class="form-label"> Name</label>
                                 <input type="text" name="name"  class="form-control" placeholder="Name" required>
                                 <small></small>
                             </div>
                         </div>
                         <div class="col-md-6">
                             <div class="mb-4">
                                 <label for="formFile" class="form-label">Logo</label>
                                 <input name="logo" value="" class="form-control" type="file" id="formFile" required>

                             </div>
                         </div>


                         <div class="col-md-6">
                             <div class="mb-4">
                                 <label for="formFile" class="form-label"> Icon</label>
                                 <input name="icon" value="" class="form-control" type="file" id="formFile" required>

                             </div>
                         </div>







                         <div class="col-md-6">
                             <div class="mb-4">
                                 <label for="formrow-inputZip" class="form-label">Phone Number</label>
                                 <input name="phone"  type="text" class="form-control" id="formrow-inputZip" placeholder="Phone Number" required>
                                 <small></small>
                             </div>
                         </div>
                         <div class="col-md-6">
                             <div class="mb-4">
                                 <label for="formrow-inputZip" class="form-label">Email</label>
                                 <input name="email"  type="email" class="form-control" id="formrow-inputZip" placeholder="Email" required>
                                 <small></small>
                             </div>
                         </div>


                         <div class="col-md-6">
                             <div class="mb-4">
                                 <label for="formrow-inputZip" class="form-label">Url</label>
                                 <input name="url"  type="text" class="form-control" id="formrow-inputZip" placeholder="Url" required>
                                 <small></small>
                             </div>
                         </div>

                         <div class="col-md-6">
                            <div class="mb-4">
                                <label for="formrow-inputZip" class="form-label">Admin Url</label>
                                <input name="admin_url"  type="text" class="form-control" id="formrow-inputZip" placeholder="Url" required>
                                <small></small>
                            </div>
                        </div>


                         <div class="col-md-6">
                             <div class="mb-4">
                                 <label for="formrow-email-input" class="form-label">Address</label>
                                 <input name="address"  type="text" class="form-control" id="formrow-email-input" placeholder="Address" required>
                             </div>
                         </div>


                     </div>






                     <div>
                         <button type="submit" class="btn btn-primary btn-sm w-md">Submit</button>
                     </div>


                 </form>
            </div>

        </div>
    </div>
</div>


@endsection


@section('script')
@endsection
