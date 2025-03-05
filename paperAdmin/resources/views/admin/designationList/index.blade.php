@extends('admin.master.master')

@section('title')
Designation List | {{ $ins_name }}
@endsection


@section('css')

@endsection

@section('body')


<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Designation Information </h4>
        </div>

    </div>
    <div class="row">


        <div class="col-lg-12 col-md-12 col-sm-12">
            @if (Auth::guard('admin')->user()->can('designationAdd'))
            <div style="text-align: right;">
                <button type="button" data-bs-toggle="modal" data-bs-target=".bd-example-modal-lg"class="btn btn-primary btn-sm">Add New Designation<span class="btn-icon-end"><i class="fa fa-plus"></i></span></button>
            </div>
            @endif
        </div>

    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="box">
                <div class="box-body">

                    @include('flash_message')
                    <div class="table-responsive">
                        <table id="example" class="table table-bordered table-hover display nowrap margin-top-10 w-p100">
                            <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Designation Name</th>

                                    <th>Designation Detail</th>
                                    <th>Designation Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($designationLists as $key=>$AllDesignationLists)
                                <tr>
                                    <td>{{ $key+1 }}</td>

                                    <td>{{ $AllDesignationLists->designation_name }}</td>

                                    <td>{{ $AllDesignationLists->designation_detail }}</td>

                                    <td>{{ $AllDesignationLists->status }}</td>
                                    <td>
                                        @if (Auth::guard('admin')->user()->can('designationUpdate'))
                                        <button type="button" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg{{ $AllDesignationLists->id }}"
                                        class="btn btn-primary shadow btn-xs sharp" >
                                        <i class="fa fa-pencil"></i></button>

                                          <!--  Large modal example -->
                                          <div class="modal fade bs-example-modal-lg{{ $AllDesignationLists->id }}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                              <div class="modal-dialog modal-lg">
                                                  <div class="modal-content">
                                                      <div class="modal-header">
                                                          <h5 class="modal-title" id="myLargeModalLabel">Update Information</h5>
                                                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                                          </button>
                                                      </div>
                                                      <div class="modal-body">
                                                          <form  action="{{ route('designationList.update',$AllDesignationLists->id ) }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                                                              @method('PUT')
                                                              @csrf



                                                              <div class="mb-3">
                                                                <label class="form-label" for="">Designation Name<span style="color:red;">*</span></label>
                                                                <input class="form-control" name="designation_name" value="{{ $AllDesignationLists->designation_name  }}"  type="text" placeholder="" required>
                                                            </div>



                                                            <div class="mb-3">
                                                                <label class="form-label" for="">Designation Detail <span style="color:red;">*</span></label>
                                                                <input class="form-control" name="designation_detail" value="{{ $AllDesignationLists->designation_detail }}"  type="text"  placeholder="" required>

                                                            </div>



                                                            <div class="mb-3 col-md-12">
                                                                <label class="form-label">Status</label>
                                                                <select id="inputState" name="status" class="form-control ms-0 wide">
                                                                    <option>Choose...</option>
                                                                    <option value="Active" {{ 'Active' == $AllDesignationLists->status ? 'selected':'' }}>Active</option>
                                                                    <option value="Inactive" {{ 'Inactive' == $AllDesignationLists->status ? 'selected':'' }}>Inactive</option>
                                                                </select>
                                                            </div>








                                                              <button type="submit" id="finalButton{{ $AllDesignationLists->id  }}" class="btn btn-primary mt-4 pr-4 pl-4">Update </button>
                                                          </form>
                                                      </div>
                                                  </div><!-- /.modal-content -->
                                              </div><!-- /.modal-dialog -->
                                          </div><!-- /.modal -->


    @endif

    {{-- <button type="button" class="btn btn-primary waves-light waves-effect  btn-sm" onclick="window.location.href='{{ route('admin.users.view',$AllDesignationLists->id) }}'"><i class="fa fa-eye"></i></button> --}}
    @if($AllDesignationLists->id <= 4)

    @else
                                @if (Auth::guard('admin')->user()->can('designationDelete'))

    <button   type="button" class="btn btn-danger shadow btn-xs sharp" onclick="deleteTag({{ $AllDesignationLists->id}})" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></button>
                  <form id="delete-form-{{ $AllDesignationLists->id }}" action="{{ route('designationList.destroy',$AllDesignationLists->id) }}" method="POST" style="display: none;">
                    @method('DELETE')
                                                  @csrf

                                              </form>

                                              @endif
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
    </div>
</section>


<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myLargeModalLabel">Add New Designation</h4>
                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="custom-validation"  action="{{ route('designationList.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                    @csrf


                    <div class="mb-3">
                        <label class="form-label" for="">Designation Name<span style="color:red;">*</span></label>
                        <input class="form-control" required name="designation_name" id="designation_name0" type="text" placeholder="" required>
                    </div>


                    <div class="mb-3">
                        <label class="form-label" for="">Designation Detail <span style="color:red;">*</span></label>

                        <div class="row">


                            <div class="col-md-12">
                                <input class="form-control" name="designation_detail"  id="designation_detail0" type="text"  placeholder="" required>
                            </div>
                        </div>


                    </div>



                    <div class="mb-3 col-md-12">
                        <label class="form-label">Status</label>
                        <select required id="inputState" name="status" class="default-select form-control ms-0 wide">
                            <option value="">Choose...</option>
                            <option value="Active">Active</option>
                            <option value="Inactive">Inactive</option>
                        </select>
                    </div>

                <div class="card-footer text-end ">
                    <button class="btn btn-primary mt-3" id="finalButton0" type="submit">Submit</button>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')
<!-- branch-->


<script>
    $("[id^=branch_id]").change(function(){
        var main_id = $(this).attr('id');
        var id_for_pass = main_id.slice(9);


        //part one id

        var firstValue = $('#hidden_value'+id_for_pass).val();
        var secondValue = $('#designation_detail'+id_for_pass).val();

        //end part one if


        var branchId = $('#branch_id'+id_for_pass).val();
        var designationName = $('#designation_name'+id_for_pass).val();

        var designationSerial =firstValue + '.'+secondValue;
        //alert(branchId);


        $.ajax({
        url: "{{ route('showBranchStep') }}",
        method: 'GET',
        data: {branchId:branchId},
        success: function(data) {



            $("#serial_part_one"+id_for_pass).val(data);
            $("#hidden_value"+id_for_pass).val(data);




        }
        });

        //

        $.ajax({
        url: "{{ route('checkDesignation') }}",
        method: 'GET',
        data: {branchId:branchId,designationName:designationName,designationSerial:designationSerial},
        success: function(data) {

            if(data >= 1){

                $("#result"+id_for_pass).html('You Have Already Add This Step');
                $("#finalButton"+id_for_pass).hide();

            }else{

                $("#result"+id_for_pass).html('');
                $("#finalButton"+id_for_pass).show();
            }


        }
        });



        //alert(id_for_pass);
    });
    </script>
<!-- end branch -->

<!-- designation -->
<script>
    $("[id^=designation_name]").keyup(function(){
        var main_id = $(this).attr('id');
        var id_for_pass = main_id.slice(16);


        var branchId = $('#branch_id'+id_for_pass).val();
        var designationName = $('#designation_name'+id_for_pass).val();

        var designationSerial = $('#designation_detail'+id_for_pass).val();
        //alert(branchId);


        $.ajax({
        url: "{{ route('checkDesignation') }}",
        method: 'GET',
        data: {branchId:branchId,designationName:designationName,designationSerial:designationSerial},
        success: function(data) {

            if(data >= 1){

                $("#result"+id_for_pass).html('You Have Already Add This Step');
                $("#finalButton"+id_for_pass).hide();

            }else{

                $("#result"+id_for_pass).html('');
                $("#finalButton"+id_for_pass).show();
            }


        }
        });



        //alert(id_for_pass);
    });
    </script>
<!-- end designation -->


<!--step-->
<script>
    $("[id^=designation_detail]").keyup(function(){
        var main_id = $(this).attr('id');
        var id_for_pass = main_id.slice(18);


        //part one id

        var firstValue = $('#hidden_value'+id_for_pass).val();
        var secondValue = $('#designation_detail'+id_for_pass).val();

        //end part one if


        var branchId = $('#branch_id'+id_for_pass).val();
        var designationName = $('#designation_name'+id_for_pass).val();

        var designationSerial =firstValue + '.'+secondValue;
        //alert(branchId);


        $.ajax({
        url: "{{ route('checkDesignation') }}",
        method: 'GET',
        data: {branchId:branchId,designationName:designationName,designationSerial:designationSerial},
        success: function(data) {

            if(data >= 1){

                $("#result"+id_for_pass).html('You Have Already Add This Step');
                $("#finalButton"+id_for_pass).hide();

            }else{

                $("#result"+id_for_pass).html('');
                $("#finalButton"+id_for_pass).show();
            }


        }
        });



        //alert(id_for_pass);
    });
    </script>
    <!--end step-->
@endsection

