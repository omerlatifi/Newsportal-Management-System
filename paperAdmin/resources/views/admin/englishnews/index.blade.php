@extends('admin.master.master')

@section('title')
English News List
@endsection



@section('body')
<div class="content-body">
    <div class="container-fluid">
         <div class="page-titles">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">English News List</h4>
        </div>

    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header with-border">
                    <h3 class="card-title">All English News List</h3>
                    
                    <div class="row">
                        <div class="col-md-12">
                            <div class="d-flex justify-content-between">
                                <div>

                                </div>
                                <div>

                                </div>
                                <div>
                                    <input type="text" id="searchData" placeholder="search here" class="form-control form-control-sm"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.card-header -->
                <div class="card-body" id="main_content_table">
                    @include('flash_message')
                    <div class="table-responsive">
                        <table  class="table table-bordered" style="width:100%">
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


                                    @if($productLists->video_news == 1)
                                    <iframe width="100" height="100"
                                    src="{{ $productLists->image_caption }}" title="YouTube video player"
                                    frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

                                    @else

                                        @if(empty($productLists->image))
                                        <img class="table_image_card" style="height:50px;" src="{{ asset('/') }}public/adminold/product-not-found.jpg" alt=""/>
                                        @else
                                        <img class="table_image_card" style="height:50px;" src="{{ asset('/') }}{{ $productLists->image }}" alt=""/>
                                        @endif

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

                                    <a href="javascript:void(0)" onclick="trashTag({{ $productLists->id }})" class="btn btn-danger btn-sm" data-bs-original-title="Delete" data-bs-toggle="tooltip">
                                        <i class="fa fa-trash"></i>
                                    </a>

                                    <form id="delete-form-{{ $productLists->id }}" action="{{ route('englishNews.destroy',$productLists->id) }}" method="POST" style="display: none;">
                                        @method('DELETE')
                                                                                          @csrf

                                                                                      </form>
                                </td>
                            </tr>
                            @endforeach

                            </tbody>
                        </table>
                    </div>
                    @include('admin.englishnews.normal_pagination')
                    <input type="hidden" id="searchCat" value="0" />
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
    function trashTag(id) {
        swal({
            title: 'Are You Sure',
            text: "You can bring from trash folder",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, Move it to trash folder!',
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
<script>

        $(document).on('click', '[id^=page_link]', function () {

var main_id = $(this).attr('id');
var id_for_pass = main_id.slice(9);
//alert(id_for_pass);

var searchCat = $("#searchCat").val();

if(searchCat == 0){
$.ajax({
url: "{{ route('englishPaginationStart') }}",
method: 'GET',
data: {id_for_pass:id_for_pass},
beforeSend: function(){
        $('#loader').show()
    },
    complete: function(){
        $('#loader').hide()
    },
success: function(data) {
  $("#main_content_table").html('');
  $("#main_content_table").html(data.options);
}
});

}else{

    $.ajax({
url: "{{ route('englishPaginationStartSearchAjax') }}",
method: 'GET',
data: {id_for_pass:id_for_pass,searchCat:searchCat},
beforeSend: function(){
        $('#loader').show()
    },
    complete: function(){
        $('#loader').hide()
    },
success: function(data) {
  $("#main_content_table").html('');
  $("#main_content_table").html(data.options);
}
});

}

});

//next page button

    $(document).on('click', '#npage_link', function () {
var id_for_pass = 2;
var searchCat = $("#searchCat").val();
if(searchCat == 0){
$.ajax({
url: "{{ route('englishPaginationStart') }}",
method: 'GET',
data: {id_for_pass:id_for_pass},
beforeSend: function(){
        $('#loader').show()
    },
    complete: function(){
        $('#loader').hide()
    },
success: function(data) {
  $("#main_content_table").html('');
  $("#main_content_table").html(data.options);
}
});

}else{

    $.ajax({
url: "{{ route('englishPaginationStartSearchAjax') }}",
method: 'GET',
data: {id_for_pass:id_for_pass,searchCat:searchCat},
beforeSend: function(){
        $('#loader').show()
    },
    complete: function(){
        $('#loader').hide()
    },
success: function(data) {
  $("#main_content_table").html('');
  $("#main_content_table").html(data.options);
}
});


}

});



  //previous button

  $(document).on('click', '[id^=papage_link]', function () {
var main_id = $(this).attr('id');
var id_for_pass1 = main_id.slice(11);
var id_for_pass = parseInt(id_for_pass1) - parseInt(1);

// alert(id_for_pass);
var searchCat = $("#searchCat").val();
if(searchCat == 0){
$.ajax({
url: "{{ route('englishPaginationStart') }}",
method: 'GET',
data: {id_for_pass:id_for_pass},
beforeSend: function(){
        $('#loader').show()
    },
    complete: function(){
        $('#loader').hide()
    },
success: function(data) {
  $("#main_content_table").html('');
  $("#main_content_table").html(data.options);
}
});

}else{

    $.ajax({
url: "{{ route('englishPaginationStartSearchAjax') }}",
method: 'GET',
data: {id_for_pass:id_for_pass,searchCat:searchCat},
beforeSend: function(){
        $('#loader').show()
    },
    complete: function(){
        $('#loader').hide()
    },
success: function(data) {
  $("#main_content_table").html('');
  $("#main_content_table").html(data.options);
}
});


}

});
//end previous button
$(document).on('click', '[id^=apage_link]', function () {



var main_id = $(this).attr('id');
var id_for_pass = main_id.slice(10);
//alert(id_for_pass);
var searchCat = $("#searchCat").val();
// var token = $("input[name='_token']").val();
if(searchCat == 0){
$.ajax({
url: "{{ route('englishPaginationStart') }}",
method: 'GET',
data: {id_for_pass:id_for_pass},
beforeSend: function(){
        $('#loader').show()
    },
    complete: function(){
        $('#loader').hide()
    },
success: function(data) {
  $("#main_content_table").html('');
  $("#main_content_table").html(data.options);
}
});

}else{

    $.ajax({
url: "{{ route('englishPaginationStartSearchAjax') }}",
method: 'GET',
data: {id_for_pass:id_for_pass,searchCat:searchCat},
beforeSend: function(){
        $('#loader').show()
    },
    complete: function(){
        $('#loader').hide()
    },
success: function(data) {
  $("#main_content_table").html('');
  $("#main_content_table").html(data.options);
}
});


}

});

//next button

    $(document).on('click', '[id^=napage_link]', function () {
var main_id = $(this).attr('id');
var id_for_pass1 = main_id.slice(11);
var id_for_pass = parseInt(id_for_pass1) + parseInt(1);

// alert(id_for_pass);
var searchCat = $("#searchCat").val();
if(searchCat == 0){
$.ajax({
url: "{{ route('englishPaginationStart') }}",
method: 'GET',
data: {id_for_pass:id_for_pass},
beforeSend: function(){
        $('#loader').show()
    },
    complete: function(){
        $('#loader').hide()
    },
success: function(data) {
  $("#main_content_table").html('');
  $("#main_content_table").html(data.options);
}
});

}else{

    $.ajax({
url: "{{ route('englishPaginationStartSearchAjax') }}",
method: 'GET',
data: {id_for_pass:id_for_pass,searchCat:searchCat},
beforeSend: function(){
        $('#loader').show()
    },
    complete: function(){
        $('#loader').hide()
    },
success: function(data) {
  $("#main_content_table").html('');
  $("#main_content_table").html(data.options);
}
});


}

});
//end next button

//search data start
$(document).on('keyup', '#searchData', function () {

var search_value = $(this).val();

$.ajax({
url: "{{ route('englishPaginationStartSearch') }}",
type: "GET",
data: {search_value:search_value},
beforeSend: function(){
        $('#loader').show()
    },
    complete: function(){
        $('#loader').hide()
    },
success: function (data) {

    $("#main_content_table").html('');
    $('#main_content_table').html(data.options);

}
});

});


//search data end
</script>


<script>
$(document).on('change', '.available_status', function () {

    var status = $(this).find(':selected').val();

    var id =   $(this).find(':selected').data('id')


        $.ajax({
    url: "{{ route('productStatusUpdate') }}",
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

@endsection
