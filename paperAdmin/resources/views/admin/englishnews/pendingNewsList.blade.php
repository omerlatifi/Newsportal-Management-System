@extends('admin.master.master')

@section('title')
English News Approval Pending List
@endsection



@section('body')
<div class="content-body">
    <div class="container-fluid">
         <div class="page-titles">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">English News Approval Pending List</h4>
        </div>

    </div>
</div>

<div class="row">


    @if(count($newsList) > 0)

    @if (Auth::guard('admin')->user()->can('approveenglishnews'))
    <div class="col-lg-12 col-md-12 col-sm-12">
        <a href="javascript:void(0)" onclick="draftTag(0)" class="btn btn-warning btn-sm" data-bs-original-title="publish" data-bs-toggle="tooltip">
            <i class="fa fa-upload"></i> Approve All
        </a>

        <form id="delete-form-0" action="{{ route('englishApproveAll',0) }}" method="POST" style="display: none;">
            @method('get')
                                                              @csrf

                                                          </form>
    </div>
    @endif
    @endif
</div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header with-border">
                    <h3 class="card-title">English News Approval Pending List</h3>
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
                                    <a href="{{ route('englishNews.show',base64_encode($productLists->id)) }}" class="btn btn-info me-10 btn-sm" data-bs-toggle="tooltip" data-bs-original-title="View">
                                        <i class="fa fa-eye"></i>
                                    </a>
                                    <a href="{{ route('englishNews.edit',base64_encode($productLists->id)) }}" class="btn btn-primary me-10 btn-sm" data-bs-toggle="tooltip" data-bs-original-title="Edit">
                                        <i class="fa fa-edit"></i>
                                    </a>


                                    @if (Auth::guard('admin')->user()->can('approveenglishnews'))
                                      <a href="javascript:void(0)" onclick="draftTag({{ $productLists->id }})" class="btn btn-warning btn-sm" data-bs-original-title="publish" data-bs-toggle="tooltip">
                                        <i class="fa fa-upload"></i>
                                    </a>

                                    <form id="delete-form-{{ $productLists->id }}" action="{{ route('englishApproveNewsFromMain',$productLists->id) }}" method="POST" style="display: none;">
                                        @method('get')
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
    function draftTag(id) {
        swal({
            title: 'Are You Sure',
            text: "You can't bring it back",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, publish it!',
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
