@extends('admin.master.master')

@section('title')
Bangla News Trash List
@endsection



@section('body')
<div class="content-body">
    <div class="container-fluid">
         <div class="page-titles">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Bangla News Trash List</h4>
        </div>

    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header with-border">
                    <h3 class="card-title">All Bangla News Trash List</h3>
                    @include('flash_message')

                </div>
                <!-- /.card-header -->
                <div class="card-body" id="main_content_table">

                    <div class="table-responsive">
                        <table id="example3" class="table table-bordered table-hover display nowrap margin-top-10 w-p100">
                            <thead>
                            <tr>
                                <th>SL</th>
                                <th>Image</th>
                                <th>Category & Subcategory</th>
                                <th>Title</th>
                                <th>Publish Date & Time</th>
                                <th>Created By</th>
                                <th>Approve Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                                @foreach($newsList as $key=>$productLists)
                            <tr>
                                <td style="width: 5%">{{ $key+1 }}</td>
                                <td style="width: 10%">

                                        @if(empty($productLists->image))
                                        <img class="table_image_card" style="height:50px;" src="{{ asset('/') }}public/adminold/product-not-found.jpg" alt=""/>
                                        @else
                                        <img class="table_image_card" style="height:50px;" src="{{ asset('/') }}{{ $productLists->image }}" alt=""/>
                                        @endif

                                </td>
                                <td style="width: 15%">

                                   <p> Category : {{ \App\Models\Category::where('id',$productLists->category)->value('category_name') }}</p>

                                   @if(empty($productLists->sub_category))

                                   @else
                                   <p>Sub-Category : {{ \App\Models\SubCategory::where('id',$productLists->sub_category)->value('subcategory_name') }}</p>
                                   @endif


                                </td>




                                <td style="width: 35%">

                    {{ $productLists->title }}

                                </td>


                                <td style="width: 10%">
                                    <span class="badge badge-info">{{ date("d-m-Y", strtotime($productLists->create_date))}}</span>
                                    <br><br>
                                    <span class="badge badge-primary">{{ $productLists->create_time}}</span>
                                </td>

                                <td style="width: 5%">
                                    {{ \App\Models\Admin::where('id',$productLists->admin_id)->value('admin_name') }}
                                </td>

                                <td style="width: 5%">

                                    @if($productLists->approve_status == 1)
                                         Approved
                                    @else

                                      Not Approved

                                    @endif
                                </td>

                                <td style="width: 15%">
                                    <a href="{{ route('news.show',base64_encode($productLists->id)) }}" class="btn btn-info me-10 btn-sm" data-bs-toggle="tooltip" data-bs-original-title="View">
                                        <i class="fa fa-eye"></i>
                                    </a>
                                    <a href="{{ route('news.edit',base64_encode($productLists->id)) }}" class="btn btn-primary me-10 btn-sm" data-bs-toggle="tooltip" data-bs-original-title="Edit">
                                        <i class="fa fa-edit"></i>
                                    </a>





                                    <a href="javascript:void(0)" onclick="rTag({{ $productLists->id }})" class="btn btn-warning btn-sm" data-bs-original-title="publish" data-bs-toggle="tooltip">
                                        <i class="fa fa-redo-alt"></i>
                                    </a>

                                    <form id="delete-form-{{ $productLists->id }}" action="{{ route('banglaNewsTrashRestore',$productLists->id) }}" method="POST" style="display: none;">
                                        @method('get')
                                                                                          @csrf

                                                                                      </form>



                                    <a href="javascript:void(0)" onclick="draftTag({{ $productLists->id }})" class="btn btn-danger btn-sm" data-bs-original-title="publish" data-bs-toggle="tooltip">
                                        <i class="fa fa-trash"></i>
                                    </a>

                                    <form id="delete-form-{{ $productLists->id }}" action="{{ route('banglaNewsTrashPublish',$productLists->id) }}" method="POST" style="display: none;">
                                        @method('get')
                                                                                          @csrf

                                                                                      </form>
                                </td>
                            </tr>
                            @endforeach

                            </tbody>
                        </table>
                    </div>

                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
    </div>


</section>
    </div>
</div>
@endsection



@section('script')
<script type="text/javascript">
    function rTag(id) {
        swal({
            title: 'Are You Sure',
            text: "You can't bring it back",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, move it main folder!',
            cancelButtonText: 'No, cancel!',
            confirmButtonClass: 'btn btn-success',
            cancelButtonClass: 'btn btn-danger',
            buttonsStyling: false,
            reverseButtons: true
        }).then((result) => {
            if (result.value) {
                event.preventDefault();
                document.getElementById('delete-form-'+id).submit();
            } else if (
                // Read more about handling dismissals
                result.dismiss === swal.DismissReason.cancel
            ) {
                swal(
                    'Cancelled',
                    'Your data is safe :)',
                    'error'
                )
            }
        })
    }
</script>
<script type="text/javascript">
    function draftTag(id) {
        swal({
            title: 'Are You Sure',
            text: "You can't bring it back",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, cancel!',
            confirmButtonClass: 'btn btn-success',
            cancelButtonClass: 'btn btn-danger',
            buttonsStyling: false,
            reverseButtons: true
        }).then((result) => {
            if (result.value) {
                event.preventDefault();
                document.getElementById('delete-form-'+id).submit();
            } else if (
                // Read more about handling dismissals
                result.dismiss === swal.DismissReason.cancel
            ) {
                swal(
                    'Cancelled',
                    'Your data is safe :)',
                    'error'
                )
            }
        })
    }
</script>

@endsection
