
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="{{ $ins_name }}" />
	<meta property="og:title" content="{{ $ins_name }}" />
	<meta property="og:description" content="{{ $ins_name }}" />
	<meta property="og:image" content="{{ asset('/') }}{{ $logo }}" />
    <link rel="icon" href="{{ asset('/') }}{{ $icon }}" type="image/x-icon">
    <link rel="shortcut icon" href="{{ asset('/') }}{{ $icon }}" type="image/x-icon">
    <title>Log In | {{ $ins_name }}</title>
    <!-- Google font-->
<!-- Vendors Style-->
<link rel="stylesheet" href="{{ asset('/') }}public/adminold/assets/css/vendors_css.css">

<!-- Style-->
<link rel="stylesheet" href="{{ asset('/') }}public/adminold/assets/css/style.css">
<link rel="stylesheet" href="{{ asset('/') }}public/adminold/assets/css/skin_color.css">
 <!-- font style-->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  </head>
  <body class="hold-transition theme-primary bg-img" style="background-image: url({{ asset('/') }}public/adminold/assets/images/auth-bg/bg-1.jpg)">
    <div class="container h-p100">
		<div class="row align-items-center justify-content-md-center h-p100">

			<div class="col-12">
				<div class="row justify-content-center no-gutters">
					<div class="col-lg-5 col-md-5 col-12">
						<div class="bg-white rounded30 shadow-lg">
							<div class="content-top-agile p-20 pb-0">
                                <div class="text-center mb-3">

                                    <img src="{{ asset('/') }}{{ $logo }}" class="mb-3" alt="">
									{{--  <h1 style="font-weight: 900;">Shop Management</h1>  --}}
                                </div>
								<h2 class="text-primary">Lets Get Started</h2>
								<p class="mb-0">Sign in to continue </p>
							</div>
							<div class="p-40">
								<form id="form" action="{{route('login.store')}}" method="post">
                                    @csrf
                                    @include('flash_message')
                                    <div class="form-group">
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text bg-transparent"><i class="fa fa-envelope"></i></span>
											</div>
											<input type="email" name="email" required class="form-control pl-15 bg-transparent" placeholder="Email">
										</div>
									</div>
									<div class="form-group">
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text  bg-transparent"><i class="fa fa-lock"></i></span>
											</div>
											<input type="password" name="password"  id="password" class="form-control pl-15 bg-transparent" placeholder="Password">
										</div>
									</div>
									  <div class="row">
										<div class="col-6">
										  <div class="checkbox" style="text-align: left;">
											<input type="checkbox" id="basic_checkbox_1" >
											<label for="basic_checkbox_1" onclick="myFunction()">See Password</label>
										  </div>
										</div>
										<!-- /.col -->
										<div class="col-6">
										 <div class="fog-pwd text-right" style="text-align: right;">
											<a href="{{ route('forgetPassword') }}" class="hover-warning"><i class="ti-lock"></i> Forgot pwd?</a><br>
										  </div>
										</div>
										<!-- /.col -->
										<div class="col-12 text-center">
										  <button type="submit" class="btn btn-danger mt-10">SIGN IN</button>
										</div>
										<!-- /.col -->
									  </div>
								</form>

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>





    <!--**********************************
        Scripts
    ***********************************-->


<!-- Vendor JS -->
<script src="{{ asset('/') }}public/adminold/assets/js/vendors.min.js"></script>

    <script>
        function myFunction() {
          var x = document.getElementById("password");
          if (x.type === "password") {
            x.type = "text";
          } else {
            x.type = "password";
          }
        }
        </script>
		<script>
    setTimeout(function(){
  $('#divID').remove();
}, 3000);
</script>
  </body>
</html>

























