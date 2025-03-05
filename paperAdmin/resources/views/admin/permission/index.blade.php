@extends('admin.master.master')

@section('title')
Permission List
@endsection


@section('body')


<!-- Content Header (Page header) -->
<div class="content-body">
    <div class="container-fluid">
         <div class="page-titles">

    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Permission Information</h4>
        </div>

    </div>

    <div class="row">

        @if (Auth::guard('admin')->user()->can('permissionAdd'))
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div style="text-align: right;">
                <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-primary btn-sm">
                    <span class="btn-icon-end"><i class="fa fa-plus"></i></span> Add New Permission
                </button>
            </div>
        </div>
        @endif
    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    @include('flash_message')
                    <div class="table-responsive">
                        <table id="example3" class="table table-bordered table-hover display nowrap margin-top-10 w-p100">
                        <thead>
                            <tr>

                                <th>Group Name</th>
                                <th>Permission Name</th>

                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($pers as $key=>$allPermissionGroup)
                            <tr>

                                <td>{{ $allPermissionGroup->group_name }}</td>
                                <td>

                                    <?php

$permissionList = DB::table('permissions')->where('group_name',$allPermissionGroup->group_name)
->select('name')->get();

                                        ?>

                                   @foreach($permissionList as $allPermissionList)

                                   <span class="badge bg-success">{{ $allPermissionList->name }}</span>

                                   @endforeach

                                </td>

                                <td>

                                    <div class="hstack gap-3 fs-15">

                                    <a data-bs-toggle="modal" data-bs-target="#exampleModal{{ $key+1 }}" class="btn btn-primary shadow btn-xs sharp me-1"><i class="fa fa-edit"></i></a>


                                    <div class="modal fade" id="exampleModal{{ $key+1 }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                          <div class="modal-content">
                                            <div class="modal-header">
                                              <h1 class="modal-title fs-5" id="exampleModalLabel">Update Information</h1>
                                              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">

                                                <div class="progress" style="display: none;">
                                                    <div class="bar"></div >
                                                    <div class="percent">0%</div >
                                                </div>


                                                <form id="form" method="post" action="{{ route('permission.update',$allPermissionGroup->group_name)}}" enctype="multipart/form-data">
                                                    @csrf
                                                    @method('PUT')
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="mb-4">
                                                                <label for="formrow-email-input" class="form-label">Group Name</label>
                                                                <input type="text" name="group_name" value="{{ $allPermissionGroup->group_name }}"  class="form-control" placeholder="Group Name" required>
                                                                <small></small>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">

                                                            <table class="table table-bordered" id="dynamicAddRemovee{{ $key+1 }}">
                                                                <tr>
                                                                    <th>Permission Name</th>
                                                                    <th>Action</th>
                                                                </tr>
                                                                @foreach($permissionList as $j=>$allPermissionList)
                                                                @if($j == 0 )
                                                                <tr id="mDelete{{ $j+50000 }}">
                                                                    <td><input type="text" name="name[]" value="{{ $allPermissionList->name }}" placeholder="Enter Ename" id="name{{ $j+50000 }}" class="form-control" />
                                                                    </td>
                                                                    <td><button type="button" name="add" id="dynamic-arr{{ $key+1 }}" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></button></td>
                                                                </tr>
                                                                @else
                                                                <tr id="mDelete{{ $j+50000 }}">
                                                                    <td><input type="text" name="name[]" value="{{ $allPermissionList->name }}" placeholder="Enter Ename" id="name{{ $j+50000 }}" class="form-control" />
                                                                    </td>
                                                                    <td><button type="button" id="remove-input-fieldd{{ $j+50000 }}" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button></td>
                                                                </tr>

                                                                @endif
                                                                @endforeach
                                                            </table>

                                                        </div>






                                                    </div>






                                                    <div>
                                                        <button type="submit" class="btn btn-primary btn-sm w-md mt-3">Update</button>
                                                    </div>


                                                </form>
                                            </div>

                                          </div>
                                        </div>
                                      </div>

                                      <?php

                                    $getIdFromGroup = DB::table('permissions')
                                    ->where('group_name',$allPermissionGroup->group_name)
                                    ->value('id');
                                      ?>


                                      <a onclick="deleteTag({{ $getIdFromGroup}})" class="btn btn-danger shadow btn-xs sharp"><i class="fa fa-trash"></i></a>

                                      <form id="delete-form-{{ $getIdFromGroup }}" action="{{ route('permission.destroy',$getIdFromGroup) }}" method="POST" style="display: none;">
                                        @method('DELETE')
                                                                      @csrf

                                                                  </form>

                                    </div>
                                </td>
                            </tr>
                            @endforeach

                    </table>
                </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">Add Permission</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">

            <div class="progress" style="display: none;">
                <div class="bar"></div >
                <div class="percent">0%</div >
            </div>
            <form id="form" method="post" action="{{ route('permission.store') }}" enctype="multipart/form-data">
                @csrf

                <div class="row">
                    <div class="col-md-12">
                        <div class="mb-4">
                            <label for="formrow-email-input" class="form-label">Group Name</label>
                            <input type="text" name="group_name"  class="form-control" placeholder="Group Name" required>
                            <small></small>
                        </div>
                    </div>
                    <div class="col-md-12">

                        <table class="table table-bordered" id="dynamicAddRemove">
                            <tr>
                                <th>Permission Name</th>
                                <th>Action</th>
                            </tr>
                            <tr>
                                <td><input type="text" name="name[]" placeholder="Permission Name" id="name0" class="form-control" />
                                </td>
                                <td><button type="button" name="add" id="dynamic-ar" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></button></td>
                            </tr>
                        </table>

                    </div>



</div>






                <div>
                    <button type="submit" class="btn btn-primary btn-sm w-md mt-4">Submit</button>
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
<script type="text/javascript">
    $(function() {
        $(document).ready(function()
        {
            var SITEURL = "{{route('permission.index')}}";
            var bar = $('.bar');
            var percent = $('.percent');
              $('form').ajaxForm({
                beforeSend: function() {
                    //$("#div1").hide();
                  $(".progress").show();

                    var percentVal = '0%';
                    bar.width(percentVal)
                    percent.html(percentVal);
                },
                uploadProgress: function(event, position, total, percentComplete) {
                    var percentVal = percentComplete + '%';
                    bar.width(percentVal)
                    percent.html(percentVal);
                },
                complete: function(xhr) {
                    //alert('File Has Been Uploaded Successfully');
                    alertify.set('notifier','position','top-center');
                   alertify.success('Uploaded Successfully');
                    window.location.href = SITEURL;
                }
              });
        });
     });
    </script>
<script type="text/javascript">
    var i = 0;
    $("#dynamic-ar").click(function () {
        ++i;
        $("#dynamicAddRemove").append('<tr><td><input type="text" name="name[]" id="name'+i+'" placeholder="Permission Name" class="form-control" /></td><td><button type="button" class="btn btn-danger btn-sm remove-input-field"><i class="fa fa-trash"></i></button></td></tr>'
            );
    });
    $(document).on('click', '.remove-input-field', function () {
        $(this).parents('tr').remove();
    });
</script>


<script type="text/javascript">
    var i = 0;
    $("[id^=dynamic-arr]").click(function () {
        ++i;
        var main_id = $(this).attr('id');
        var id_for_pass = main_id.slice(11);

        $("#dynamicAddRemovee"+id_for_pass).append('<tr id="mDelete'+i+'"><td><input type="text" name="name[]" id="name'+i+'" placeholder="Permission Name" class="form-control" /></td><td><button type="button" id="remove-input-field'+i+'" class="btn btn-danger btn-sm">Delete</button></td></tr>'
            );
    });


    $(document).on('click', '[id^=remove-input-fieldd]', function () {

        var main_id = $(this).attr('id');
        var id_for_pass = main_id.slice(19);

        //alert(id_for_pass);

        $("#mDelete"+id_for_pass).remove();

        //$(this).parents('tr').remove();
    });
</script>

@endsection
