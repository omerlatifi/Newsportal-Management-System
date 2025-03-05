@extends('admin.master.master')

@section('title')
Category List
@endsection

@section('css')

@endsection


@section('body')
  <!-- Content Header (Page header) -->
  <div class="content-body">
    <div class="container-fluid">
         <div class="page-titles">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Add/Edit Category</h4>
        </div>

    </div>
</div>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    @include('flash_message')
                    <form class="custom-validation" action="{{ route('categoryList.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                        @csrf
                        <div class="form-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="fw-700 fs-16 form-label">Category Name</label>
                                        <input type="text" name="category_name" class="form-control" placeholder="Category Name">
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="fw-700 fs-16 form-label">English Name</label>
                                        <input type="text" name="eng_name" class="form-control" placeholder="English Name">
                                    </div>
                                </div>
                            </div>
                            <!--/row-->

                        </div>
                        <div class="form-actions mt-10">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> Save /
                                Add
                            </button>
                            {{-- <button type="button" class="btn btn-danger">Cancel</button> --}}
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /.content -->

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Category List</h4>
        </div>

    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="productorder" class="table table-hover no-wrap product-order" data-page-size="10">
                            <tr>
                                <th>SL</th>
                                <th>Name</th>
                                <th>English Name</th>
                                <th>Status</th>
                                <th>Priority</th>
                                <th>Action</th>
                            </tr>

                            <?php

                              $menuListCount= count($menuList);

                            ?>
                            @foreach ($menuList as $menuLists)
                           <tr>
                            <td>{{ $loop->index+1 }}</td>

                            <td>
                                {{ $menuLists->category_name }}
                            </td>

                            <td>
                                {{ $menuLists->eng_name }}
                            </td>
                            <td >


                                <select class="form-control changeStatus" name="" id="">
                                <option data-id="{{ $menuLists->id }}" value="1" {{ $menuLists->status == '1' ? 'selected':'' }}>Active</option>
                                <option data-id="{{ $menuLists->id }}" value="0" {{ $menuLists->status == '0' ? 'selected':'' }}>InActive</option>
                            </select>


                        </td>
                        <td >


                            <select class="form-control priorityStatus" name="" id="">
                                @for ($i = 1; $i <= $menuListCount; $i++)
                                <option data-mid="{{ $menuLists->id }}" value="{{ $i }}"  {{ $menuLists->priority == $i ? 'selected':'' }}>{{ $i }}</option>
                              @endfor
                            </select>




                        </td>

                                <td>


                                <a href="{{ route('categoryList.edit',$menuLists->id) }}" class="text-info me-10" data-bs-toggle="tooltip" data-bs-original-title="Edit">
                                    <i class="fa fa-pencil"></i>
                                    </a>

                                    @if (Auth::guard('admin')->user()->can('categoryDelete'))
                                    <a href="javascript:void(0)" onclick="deleteTag({{ $menuLists->id }})" class="text-danger" data-bs-original-title="Delete" data-bs-toggle="tooltip">
                                        <i class="fa fa-trash"></i>
                                    </a>
                                    @endif

                                    <form id="delete-form-{{ $menuLists->id }}" action="{{ route('categoryList.destroy',$menuLists->id) }}" method="POST" style="display: none;">
                                        @method('DELETE')
                                                                                          @csrf

                                                                                      </form>
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
    </div>
</div>
@endsection


@section('script')

<script>

    //priority status  code


    $(document).on('change', '.priorityStatus', function () {

        var priority = $(this).find(':selected').val();
        var id =   $(this).find(':selected').data('mid')


        $.ajax({
        url: "{{ route('prioritytatusUpdate') }}",
        method: 'get',
        data: {priority:priority,id:id},
        beforeSend: function(){
        $('#loader').show()
        },
        complete: function(){
        $('#loader').hide()
        },
        success: function(data) {

        alertify.set('notifier','position','top-center');
        alertify.success('Prioriry Updated SuccessFully');
        location.reload(true);


        }
        });

    });

    //end priority status code

        $(document).on('change', '.changeStatus', function () {

            var status = $(this).find(':selected').val();

            var id =   $(this).find(':selected').data('id')


                $.ajax({
            url: "{{ route('categoryStatusUpdate') }}",
            method: 'get',
            data: {status:status,id:id},
            beforeSend: function(){
                $('#loader').show()
            },
            complete: function(){
                $('#loader').hide()
            },
            success: function(data) {

                alertify.set('notifier','position','top-center');
                alertify.success('Updated SuccessFully');
                location.reload(true);


            }
            });

    });

    </script>



<script>
    imgInp.onchange = evt => {
  const [file] = imgInp.files
  if (file) {
    blah.src = URL.createObjectURL(file)
  }
}

imgInpone.onchange = evt => {
  const [file] = imgInpone.files
  if (file) {
    blahone.src = URL.createObjectURL(file)
  }
}
</script>
@endsection
