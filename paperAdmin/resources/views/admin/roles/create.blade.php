@extends('admin.master.master')

@section('title')
Add Role
@endsection


@section('body')




<!-- Content Header (Page header) -->
<div class="content-body">
    <div class="container-fluid">
         <div class="page-titles">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Add Role Information</h4>
        </div>

    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <form class="custom-validation" action="{{ route('role.store') }}" method="post" enctype="multipart/form-data" id="form">
                        @csrf
                        <div class="row">

                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">

                                      <div class="form-group">
                            <label for="name">Role Name</label>
                            <input type="text" class="form-control form-control-sm" id="name" name="name" placeholder="Role Name">
                        </div>

                        <div class="form-group mt-3">
<input type="checkbox" id="checkPermissionAll" value="1" class="filled-in" />
                            <label for="checkPermissionAll">All</label>
                      </div>
                      <hr>
                       @php $i = 1; @endphp
                            @foreach ($permission_groups as $group)
                      <div class="row">
                          <div class="col-md-3">
                              <div class="form-group">
{{-- <input type="checkbox" id="{{ $i }}Management" value="{{ $group->name }}" onclick="checkPermissionByGroup('role-{{ $i }}-management-checkbox', this)" name="groupName[]" class="filled-in bbb" /> --}}
                            <label for="checkPermission">{{ $group->name }}</label>
                              </div>
                          </div>
                          <div class="col-md-9 role-{{ $i }}-management-checkbox">
                            @php
                                            $permissions = App\Models\Admin::getpermissionsByGroupName($group->name);
                                            $j = 1;
                                        @endphp
                                          @foreach ($permissions as $permission)
                              <div class="form-group">


                              <input type="checkbox" name="permissions[]" id="checkPermission{{ $permission->id }}" value="{{ $permission->name }}" class="filled-in bbb" />
                            <label for="checkPermission{{ $permission->id }}">{{ $permission->name }}</label>


                          </div>

                               @php  $j++; @endphp

                              @endforeach
                          </div>
                      </div>
                          @php  $i++; @endphp
                           <hr style="height: 2px;
    background: cornflowerblue;">
                            @endforeach

                                    </div>

                                </div>
                            </div>






                            <div class="col-lg-12">
                                <div class="float-right d-none d-md-block">
                                    <div class="form-group mb-4">
                                        <div>
                                            <button type="submit" class="btn btn-primary btn-sm  waves-effect  btn-sm waves-light mr-1">
                                               Submit
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- end col -->
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
</div>
</div>


@endsection
@section('script')

     <script>
    /**
         * Check all the permissions
         */
         $("#checkPermissionAll").click(function(){
             if($(this).is(':checked')){
                 // check all the checkbox
                 $('input[type=checkbox]').prop('checked', true);
             }else{
                 // un check all the checkbox
                 $('input[type=checkbox]').prop('checked', false);
             }
         });
         function checkPermissionByGroup(className, checkThis){
            const groupIdName = $("#"+checkThis.id);
            const classCheckBox = $('.'+className+' input');
            if(groupIdName.is(':checked')){
                 classCheckBox.prop('checked', true);
             }else{
                 classCheckBox.prop('checked', false);
             }
            implementAllChecked();
         }
         function checkSinglePermission(groupClassName, groupID, countTotalPermission) {
            const classCheckbox = $('.'+groupClassName+ ' input');
            const groupIDCheckBox = $("#"+groupID);
            // if there is any occurance where something is not selected then make selected = false
            if($('.'+groupClassName+ ' input:checked').length == countTotalPermission){
                groupIDCheckBox.prop('checked', true);
            }else{
                groupIDCheckBox.prop('checked', false);
            }
            implementAllChecked();
         }

         //nnnn


//          $(document).on('click', '.bbb', function(){


// var mainstatus = $(this).data('status');


// var totalBranch = $('input[name="groupName[]"]:checked').map(function (idx, ele) {
// return $(ele).val();
// }).get();


// var totalDesi = $('input[name="permissions[]"]:checked').map(function (idx, ele) {
// return $(ele).val();
// }).get();





// console.log(totalBranch);
// console.log(totalDesi);






// });

</script>

@endsection
