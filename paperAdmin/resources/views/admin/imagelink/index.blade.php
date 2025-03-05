@extends('admin.master.master')

@section('title')
Image Link List | {{ $ins_name }}
@endsection


@section('css')

@endsection

@section('body')
<div class="content-body">
    <div class="container-fluid">
         <div class="page-titles">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Image Link Information </h4>
        </div>

    </div>
    <div class="row">

        @if (Auth::guard('admin')->user()->can('imagelinkAdd'))
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div style="text-align: right;">
                <button type="button" data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg"class="btn btn-primary btn-sm">Add New Image Link<span class="btn-icon-end"><i class="fa fa-plus"></i></span></button>
            </div>
        </div>
        @endif




    </div>
</div>



<section class="content">


    <div class="row">
        <!-- Individual column searching (text inputs) Starts-->
        <div class="col-sm-12">
            <div class="card">

                <div class="card-body">

                    @include('flash_message')
                    <div class="table-responsive">

                        <table id="example3" class="table table-bordered table-hover display nowrap margin-top-10 w-p100">
                            <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Image</th>
                                    <th>Image Link</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($newsList as $key=>$unitLists)
                                <tr>
                                    <td>{{ $key+1 }}</td>

                                    <td> <img src="{{ asset('/') }}{{$unitLists->image_folder  }}" style="height:50px;"/></td>

                                    <td>

                                      <span id="copyValue{{$unitLists->id}}">  {{url('')}} {{'/'.$unitLists->image_folder}}</span>
                                      <br>
                                      <button id="copyLink{{$unitLists->id}}" class="btn btn-info btn-sm">copy</button>

                                    </td>


                                    <td>
                                        @if (Auth::guard('admin')->user()->can('imagelinkUpdate'))
                                        <button type="button" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg{{ $unitLists->id }}"
                                        class="btn btn-primary shadow btn-xs sharp" >
                                        <i class="fa fa-pencil"></i></button>

                                          <!--  Large modal example -->
                                          <div class="modal fade bs-example-modal-lg{{ $unitLists->id }}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                              <div class="modal-dialog modal-lg">
                                                  <div class="modal-content">
                                                      <div class="modal-header">
                                                          <h5 class="modal-title" id="myLargeModalLabel">Update Information</h5>
                                                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                                          </button>
                                                      </div>
                                                      <div class="modal-body">
                                                          <form  action="{{ route('imageLink.update',$unitLists->id ) }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                                                              @method('PUT')
                                                              @csrf

                                                              <div class="mb-3">
                                                                <label class="form-label" for="">Image</label>
                                                                <input class="form-control" name="image_folder"   type="file" placeholder="" >
                                                                <img src="{{ asset('/') }}{{$unitLists->image_folder  }}" style="height:50px;"/>
                                                            </div>



                                                              <button type="submit"  class="btn btn-primary mt-4 pr-4 pl-4">Update </button>
                                                          </form>
                                                      </div>
                                                  </div><!-- /.modal-content -->
                                              </div><!-- /.modal-dialog -->
                                          </div><!-- /.modal -->


    @endif

                                @if (Auth::guard('admin')->user()->can('imagelinkDelete'))

    <button   type="button" class="btn btn-danger shadow btn-xs sharp" onclick="deleteTag({{ $unitLists->id}})" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></button>
                  <form id="delete-form-{{ $unitLists->id }}" action="{{ route('imageLink.destroy',$unitLists->id) }}" method="POST" style="display: none;">
                    @method('DELETE')
                                                  @csrf

                                              </form>

                                              @endif

                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- Individual column searching (text inputs) Ends-->
    </div>
</div>
<!-- Container-fluid Ends-->
</section>

<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myLargeModalLabel">Add New Image Link</h4>
                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="custom-validation"  action="{{ route('imageLink.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                    @csrf


                    <div class="mb-3">
                        <label class="form-label" for="">Image<span style="color:red;">*</span></label>
                        <input class="form-control" name="image_folder"   type="file" placeholder="" required>
                    </div>



                <div class="card-footer text-end ">
                    <button class="btn btn-primary mt-3" id="finalButton0" type="submit">Submit</button>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>
</div>
</div>

@endsection

@section('script')
<script>

$('[id^=copyLink]').on('click', function() {



var main_id = $(this).attr('id');
var result = main_id.slice(8);

    value = $('#copyValue'+result).html();


    navigator.clipboard.writeText(value);

          alertify.set('notifier','position','top-center');
          alertify.success('সফলভাবে কপি হয়েছে');

    });

    </script>
@endsection

