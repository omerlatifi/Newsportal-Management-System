<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Meta -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon icon -->
  <meta name="description" content="{{ $ins_name }}" />
	<meta property="og:title" content="{{ $ins_name }}" />
	<meta property="og:description" content="{{ $ins_name }}" />
	<meta property="og:image" content="{{ asset('/') }}{{ $logo }}" />
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <link rel="icon" href="{{ asset('/') }}{{ $icon }}" type="image/x-icon">
  <link rel="shortcut icon" href="{{ asset('/') }}{{ $icon }}" type="image/x-icon">
  <title>@yield('title')</title>
  <link href="{{ asset('/') }}public/admin/vendor/jqvmap/css/jqvmap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="{{ asset('/') }}public/admin/vendor/chartist/css/chartist.min.css">
  <link href="{{ asset('/') }}public/admin/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">
	<link href="{{ asset('/') }}public/admin/vendor/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
  <link href="{{ asset('/') }}public/admin/css/style.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&amp;family=Roboto:wght@100;300;400;500;700;900&amp;display=swap" rel="stylesheet">

  <link href="{{ asset('/') }}public/admin/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://parsleyjs.org/src/parsley.css">
    <link href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css'rel='stylesheet'>
<script src="{{ asset('/')}}public/parsely1.js"></script>
 <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

@yield('css')
</head>
<body>

    <!--*******************
        Preloader start
    ********************-->
    @include('admin.include.loaderTwo')
    <!--*******************
        Preloader end
    ********************-->

    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

        <!--**********************************
            Nav header start
        ***********************************-->
        @include('admin.include.mainheader')
        <!--**********************************
            Nav header end
        ***********************************-->
		
		<!--**********************************
            Chat box start
        ***********************************-->
		
		<!--**********************************
            Chat box End
        ***********************************-->
		
		<!--**********************************
            Header start
        ***********************************-->
        @include('admin.include.header')
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
       @include('admin.include.sidebar')
        <!--**********************************
            Sidebar end
        ***********************************-->
		
		<!--**********************************
            Content body start
        ***********************************-->
        
        @yield('body')
        <!--**********************************
            Content body end
        ***********************************-->

        <!--**********************************
            Footer start
        ***********************************-->
        @include('admin.include.footer')
        <!--**********************************
            Footer end
        ***********************************-->

		<!--**********************************
           Support ticket button start
        ***********************************-->

        <!--**********************************
           Support ticket button end
        ***********************************-->


    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->

    <!--**********************************
        Scripts
    ***********************************-->
    <!-- Required vendors -->
  <script src="{{asset('/')}}public/admin/vendor/global/global.min.js"></script>
	<script src="{{asset('/')}}public/admin/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script src="{{asset('/')}}public/admin/vendor/chart-js/chart.bundle.min.js"></script>
     <script src="{{asset('/')}}public/admin/js/custom.min.js"></script>
	<script src="{{asset('/')}}public/admin/js/deznav-init.js"></script>
	<script src="{{asset('/')}}public/admin/vendor/bootstrap-datetimepicker/js/moment.js"></script>
	<script src="{{asset('/')}}public/admin/vendor/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
	<!-- Chart piety plugin files -->
       <script src="{{asset('/')}}public/admin/vendor/peity/jquery.peity.min.js"></script>
	
	<!-- Apex Chart -->
	{{--  <script src="{{asset('/')}}public/admin/vendor/apexchart/apexchart.js"></script>  --}}
	
	<!-- Dashboard 1 -->
	<script src="{{asset('/')}}public/admin/js/dashboard/dashboard-1.js"></script>

  <!-- Datatable -->
  <script src="{{asset('/')}}public/admin/vendor/datatables/js/jquery.dataTables.min.js"></script>
  <script src="{{asset('/')}}public/admin/js/plugins-init/datatables.init.js"></script>

	<script>
		$(function () {
			$('#datetimepicker1').datetimepicker({
				inline: true,
			});
		});
	</script>
  @yield('script')
  <script src="https://unpkg.com/sweetalert2@7.19.1/dist/sweetalert2.all.js"></script>
<script type="text/javascript">
    function deleteTag(id) {
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
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

    <script>

        $(document).ready(function() {
          $('.summernote').summernote();
        });
                </script>
<script src="https://cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<script>
  $(document).on('click', '#pp', function(e) {


        $('.bd-example-modal-lg').modal('hide');
});
</script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
<script type="text/javascript">
    jQuery.browser = {};
    (function () {
        jQuery.browser.msie = false;
        jQuery.browser.version = 0;
        if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
            jQuery.browser.msie = true;
            jQuery.browser.version = RegExp.$1;
        }
    })();
</script>

  <script>
 $(function(){
    $("#datepicker").datepicker({
        dateFormat: "yy-mm-dd",
        changeMonth: true,
        changeYear: true
    });
});
  </script>

<script>
    $(function(){
       $("#datepicker1").datepicker({
           dateFormat: "yy-mm-dd",
           changeMonth: true,
           changeYear: true
       });
   });
     </script>


<script>
    $(function(){
       $(".datepicker23").datepicker({
           dateFormat: "yy-mm-dd",
           changeMonth: true,
           changeYear: true
       });
   });
     </script>

<script>
    $(function(){
       $(".datepicker233").datepicker({
           dateFormat: "dd-mm-yy",
           changeMonth: true,
           changeYear: true,
           calendarWeeks: true,
    todayHighlight: true,
    autoclose: true
       });
   });





     </script>
     <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
     <script>
        $(document).ready(function() {
    $('.js-example-basic-multiple').select2();
    $('.js-example-basic-single').select2();
});
     </script>


<script>
    $(document).ready(function(){
  $("#form").on("submit", function(){


    //alert(123);
    //$("#pageloader").fadeIn();
    $("#pageloaderOne").fadeIn();

  });//submit
});//document ready
</script>
<script>
    setTimeout(function(){
  $('#divID').remove();
}, 3000);
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.js"></script>


</body>


</html>