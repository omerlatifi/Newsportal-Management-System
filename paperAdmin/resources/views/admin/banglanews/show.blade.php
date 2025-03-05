@extends('admin.master.master')

@section('title')
{{ $newList->title }}
@endsection


@section('css')

@endsection

@section('body')
<div class="content-body">
    <div class="container-fluid">
         <div class="page-titles">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">{{ $newList->title }} <span style="font-size: 10px;color:red;">{{ $newList->subtittle }}</span></h4>
        </div>

    </div>
</div>
@include('flash_message')
<section class="content">

    <div class="row">

        <div class="col-lg-12 col-sm-12">

            @if($newList->video_news == 1)

            <div class="card">
                <div class="card-body">

                    <iframe width="725" height="407"
                    src="{{ $newList->image_caption }}" title="YouTube video player"
                    frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
    
                                {!! $newList->des !!}
                          
    
                </div>
            </div>


           

            @else


        <div class="card">
            <img class="card-img-top" src="{{ asset('/') }}{{ $newList->image }}" alt="Card image cap">
            <div class="card-body">

                            {!! $newList->des !!}
                      

            </div>
        </div>
        @endif

        </div>

    </div>


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
