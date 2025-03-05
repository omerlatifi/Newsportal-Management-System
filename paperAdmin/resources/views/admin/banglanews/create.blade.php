@extends('admin.master.master')

@section('title')
Create News
@endsection


@section('css')

@endsection

@section('body')
<div class="content-body">
    <div class="container-fluid">
         <div class="page-titles">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Create News</h4>
        </div>

    </div>
</div>
@include('flash_message')
<section class="content">
    <form class="custom-validation" action="{{ route('news.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
        @csrf
    <div class="row">
        <div class="col-lg-6 col-sm-12">
            <div class="card">
                <div class="card-body">

                        <div class="row">

                            <?php
                            $dt = new DateTime();
                            $dt->setTimezone(new DateTimezone('Asia/Dhaka'));
                            $created_at = $dt->format('h:i:sa');


?>

                            <div class="col-lg-6 col-sm-12">
                                <div class="form-group">
                                    <label class="fw-700 fs-16 form-label">Entry Date <span style="color:red;">*</span></label>
                                    <input type="text" required value="{{ date('d-m-Y') }}" name="create_date"  class="form-control datepicker233" placeholder="">
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-12">
                                <div class="form-group">
                                    <label class="fw-700 fs-16 form-label">Entry Time <span style="color:red;">*</span></label>
                                    <input type="text" required value="{{ $created_at }}" name="create_time" class="form-control" placeholder="">
                                </div>
                            </div>
                            <div class="col-lg-12 col-sm-12">
                                <div class="form-group">
                                    <label class="fw-700 fs-16 form-label">Title <span style="color:red;">*</span></label>
                                    <input type="text" required class="form-control" name="title" placeholder="Title">
                                </div>
                            </div>

                            <div class="col-lg-12 col-sm-12">
                                <div class="form-group">
                                    <label class="fw-700 fs-16 form-label">Sub-Title</label>
                                    <input type="text"  class="form-control" name="subtittle" placeholder="Sub-Title">
                                    <input type="hidden" required class="form-control" name="publish_site" value="1" placeholder="Sub-Title">
                                    <input type="hidden" required class="form-control" name="trash_status" value="0" placeholder="Sub-Title">
                                </div>
                            </div>


                            </div>

                        </div>

                </div>
            </div>

        <div class="col-lg-6 col-sm-12">
            <div class="card">
                <div class="card-body">
                    <div class="category_demo text-start">
                        <img id ="blah" style="height: 75px;" src="{{ asset('/') }}public/adminold/assets/images/progga_images/demo_product/img2.jpg" alt=""
                             class="mb-15">
                        <div class="mb-3">
                            <label class="form-label">Product Images <span style="color:red;">*</span></label>
                            <small class="text-danger">(Ratio 1:1)</small>
                            <input name="image"  class="form-control" accept="image/*" type='file' id="imgInp" required>
                        </div>
                    </div>

                    <div class="col-lg-12 col-sm-12">
                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">Image Caption <span style="color:red;">*</span></label>
                            <input type="text" required class="form-control" name="image_caption" placeholder="Image Caption">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12 col-sm-12">

            <div class="card">
                <div class="card-body">


                    <div class="row">
                        <div class="col-lg-6 col-sm-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Category <span style="color:red;">*</span></label>
                                <select name="category"  id="category_id" class="form-control select2" style="width: 100%;" required>
                                    <option value="">--please select --</option>
                                    @foreach($categoryList as $categoryLists)
                                    <option value="{{ $categoryLists->id }}" {{ 'Stripe' == $categoryLists->category_name ? 'selected':'' }} data-name="{{ $categoryLists->category_name }}">{{ $categoryLists->category_name }}</option>
                                    @endforeach

                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Sub Category </label>
                                <select name="sub_category" id="subcategory_id" class="form-control select2" style="width: 100%;">
                                    <option value="">--please select --</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-lg-6 col-sm-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Head Line <span style="color:red;">*</span></label>
                                <select name="headline_type" id="headline_type_id" class="form-control select2" style="width: 100%;" required>
                                    <option value="no" selected>No</option>
                                    <option value="yes" >Yes</option>
                                </select>
                            </div>
                        </div>


                        <div class="col-lg-6 col-sm-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">View In Home Page <span style="color:red;">*</span></label>
                                <select name="home_page_position" id="home_page_position" class="form-control select2" style="width: 100%;" required>
                                    <option value="other" >Other Section</option>
                                    <option value="first" >First Section</option>
                                    <option value="second" >Second Section</option>
                                    <option value="third" >Third Section</option>
                                    <option value="fourth" >Fourth Section</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-lg-12 col-sm-12">
                            <div class="form-group">
                                <label class="fw-700 fs-16 form-label">Status <span style="color:red;">*</span></label>
                                <select name="status" id="status" class="form-control select2" style="width: 100%;" required>
                                    <option value="1" selected>Publish</option>
                                    <option value="0" >Draft</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            </div>

        <div class="col-lg-12 col-sm-12">
        <div class="card">
            <div class="card-body">

                <div class="col-lg-12 col-sm-12">
                    <div class="form-group">
                        <label class="fw-700 fs-16 form-label">News Description <span style="color:red;">*</span></label>
                        <textarea required class="form-control summernote" name="des" placeholder="Description" required>
                        </textarea>
                    </div>
                </div>

            </div>
        </div>

        </div>

    </div>

    <div class="form-actions mt-10">
        <button type="submit"  class="btn btn-primary"> <i class="fa fa-check"></i> Save / Add</button>
    </div>
</form>
<input type="hidden" id="editId" value="0"/>
</section>
</div>
</div>
@endsection

@section('script')
<script>

    //priority status  code


    $(document).on('change', '.inventoryId', function () {

        var name_id = $(this).find(':selected').val();
        var id =   $(this).find(':selected').data('mid');
        var lid =   $(this).find(':selected').data('lid');
        var unit =   $(this).find(':selected').data('unit');
        var quantity =   $(this).find(':selected').data('quantity');

        $('#avq'+lid).html('Available Quantity: '+ quantity + ' '+unit );


        // $.ajax({
        // url: "{{ route('getInventoryInfo') }}",
        // method: 'get',
        // data: {name_id:name_id,id:id,unit:unit,quantity:quantity},
        // beforeSend: function(){
        // $('#loader').show()
        // },
        // complete: function(){
        // $('#loader').hide()
        // },
        // success: function(data) {

        // alertify.set('notifier','position','top-center');
        // alertify.success('Prioriry Updated SuccessFully');
        // location.reload(true);


        // }
        // });

    });
    $(document).on('keyup', '.productQuantity', function () {
        var id =   $(this).data('qid');
        var quantity = $('#m'+id).find(':selected').data('quantity');

        if( $(this).val() > quantity){

            alertify.alert('Error', 'Quantity Not Available!', function(){ alertify.success('Ok'); });

            $('#finalSubmitButton').hide();

        }else{

            $('#finalSubmitButton').show();

        }

        //alert(quantity);
    });
    </script>

<script>
    $("#stock_type").change(function(){
            if(this.value === 'daily' || this.value === 'fixed') {
               $("#product_stock_div").show()
            }
            else {
                $("#product_stock_div").hide()
            }
        });
</script>
<script>

        $(document).on('change', '#category_id', function () {

            var value = $(this).find(':selected').val();


                $.ajax({
            url: "{{ route('getSubCategoryId') }}",
            method: 'get',
            data: {value:value},
            beforeSend: function(){
                $('#loader').show()
            },
            complete: function(){
                $('#loader').hide()
            },
            success: function(data) {


                $('#subcategory_id').html('');
                $('#subcategory_id').html(data);
                alertify.set('notifier','position','top-center');
                alertify.success('SubCategory Viewed');
                //location.reload(true);


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
</script>

@endsection
