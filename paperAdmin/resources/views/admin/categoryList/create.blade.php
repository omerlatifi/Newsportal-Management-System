@extends('admin.master.master')

@section('title')
Add Menu
@endsection


@section('css')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/croppie/2.6.5/croppie.min.css">

@endsection

@section('body')
<div class="content-body">
<div class="container-fluid">

    <div class="row page-titles">
        <ol class="breadcrumb">
            <li class="breadcrumb-item active">Food & Table Management</li>
            <li class="breadcrumb-item">Add Menu</li>
        </ol>
    </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">

                        <div class="card-body">
                        @include('flash_message')


                        <div class="row cropdiv" style="display: none;">
                            <div class="col-md-8">

                                <div id="upload-demo" ></div>

                            </div>

                            <div class="col-md-4">
                            <button type="button" class="btn btn-primary image-upload" >Crop</button>
                            </div>
                        </div>

                            <form class="custom-validation" action="{{ route('menuList.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                                @csrf




                                <!--new code for restuadent --->

                                <div class="row">


                                    <div class="mb-3 col-md-12">
                                        <label class="form-label">Menu Image</label>
                                        <input type="file" id="image"  accept="image/*" name="image" class="form-control menuImage" required>


                                        <input type="hidden" id="image_base64" name="image_base64">
                                    <img src="" id="show-crop-image" style="width: 200px;display: none;" class="show-image">


                                    </div>
                                    <div class="mb-3 col-md-12">
                                        <label class="form-label">Menu Name</label>
                                        <input type="text" name="category_name" class="form-control" placeholder="Name" required>
                                    </div>

                                    <div class="mb-3 col-md-12">
                                        <label class="form-label">Status</label>
                                        <select id="inputState" required name="status" class="default-select form-control ms-0 wide">
                                            <option value="">Choose...</option>
                                            <option value="Active">Active</option>
                                            <option value="Inactive">Inactive</option>
                                        </select>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>

                                <!-- new code form restuadent --->
                              </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

@section('script')
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/croppie/2.6.5/croppie.js"></script>
<script>


$.ajaxSetup({
      headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
    });

    var resize = $('#upload-demo').croppie({
        enableExif: true,
        enableOrientation: true,
        viewport: {
            width: 200,
            height: 200,
            type: 'square'
        },

        boundary: {
            width: 250,
            height: 250
        }
    });

    $('#image').on('change', function () {

       // $('#modal').modal('show');
        $('.cropdiv').show();
      var reader = new FileReader();
        reader.onload = function (e) {
          resize.croppie('bind',{
            url: e.target.result
          }).then(function(){
            console.log('success bind image');
          });

        }
        reader.readAsDataURL(this.files[0]);
    });


    $('.image-upload').on('click', function (ev) {


        //var mainId = $('#mainid').val();
        // alert(mainId);

        resize.croppie('result', {
        type: 'canvas',
        size: 'viewport'

        }).then(function (img) {
            $('.cropdiv').hide();
           // $("#modal").modal('toggle');
                $("input[name='image_base64']").val(img);
                $(".show-image").show();
                $(".show-image").attr("src",img);

        });
});

$("#cancelImage").click(function(){
        $("#modal").modal('toggle');
    });

</script>
@endsection
