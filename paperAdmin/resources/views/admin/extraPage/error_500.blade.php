
<!DOCTYPE html>
<html lang="en" class="h-100">



<head>
    <!-- Meta -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="{{ $ins_name }}" />
	<meta property="og:title" content="{{ $ins_name }}" />
	<meta property="og:description" content="{{ $ins_name }}" />
	<meta property="og:image" content="{{ asset('/') }}{{ $logo }}" />
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <link rel="icon" href="{{ asset('/') }}{{ $icon }}" type="image/x-icon">
  <link rel="shortcut icon" href="{{ asset('/') }}{{ $icon }}" type="image/x-icon">
  <title>500 | {{ $ins_name }}</title>

	<!-- Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">


  <link href="{{asset('/')}}public/admin/css/style.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&amp;family=Roboto:wght@100;300;400;500;700;900&amp;display=swap" rel="stylesheet">
</head>
</head>

<body class="h-100">    
    <div class="authincation h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-6">
                    <div class="form-input-content text-center error-page">
                        <h1 class="error-text font-weight-bold">500</h1>
                        <h4><i class="fa fa-times-circle text-danger"></i> Internal Server Error</h4>
                        <p>You do not have permission to view this resource</p> 
						<div>
                            <a class="btn btn-primary" href="{{ url()->previous() }}">Back to Home</a>
                        </div>	
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<!--**********************************
	Scripts
***********************************-->
<!-- Required vendors -->
<script src="{{asset('/')}}public/admin/vendor/global/global.min.js"></script>
<script src="{{asset('/')}}public/admin/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
<script src="{{asset('/')}}public/admin/js/custom.min.js"></script>
<script src="{{asset('/')}}public/admin/js/deznav-init.js"></script>


</html>