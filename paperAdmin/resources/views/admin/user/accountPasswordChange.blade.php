
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
    <title>Add New Password | {{ $ins_name }}</title>
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

                                </div>
								<h2 class="text-primary">WelCome ! Change Password To Login</h2>
								{{-- <p class="mb-0">Sign in to continue </p> --}}
							</div>
							<div class="p-40">
                                <form class="theme-form login-form" action="{{route('postPasswordChange')}}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                                    @csrf
                                    <input type="hidden" value="{{ $email }}" name="mainEmail" />
                                    @include('flash_message')
                                
									<div class="form-group">
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text  bg-transparent"><i class="fa fa-lock"></i></span>
											</div>

                                            <input type="password" class="form-control pl-15 bg-transparent" id="password"  data-parsley-minlength="8"
                                            data-parsley-required="true" name="password" placeholder="Password" required>

                                            @if ($errors->has('password'))
                                          <span class="text-danger">{{ $errors->first('password') }}</span>
                                      @endif
										</div>
									</div>

                                    <div class="row">
                                        <div class="col-6">
                                            <div class="checkbox">
                                              <input type="checkbox" id="basic_checkbox_1" >
                                              <label for="basic_checkbox_1" onclick="myFunction()">See Password</label>
                                            </div>
                                          </div>
                                    </div>

                                    <div class="form-group">
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text  bg-transparent"><i class="fa fa-lock"></i></span>
											</div>

                                            <input  class="form-control pl-15 bg-transparent" type="password" data-parsley-equalto="#password"
                                            parsley-required="true" id="password_confirmation" name="password_confirmation" placeholder="পাসওয়ার্ড" required>

                                            @if ($errors->has('password'))
                                          <span class="text-danger">{{ $errors->first('password') }}</span>
                                      @endif
										</div>
									</div>
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="checkbox">
                                              <input type="checkbox" id="basic_checkbox_12" >
                                              <label for="basic_checkbox_12" onclick="myFunctionc()">See Password</label>
                                            </div>
                                          </div>
                                    </div>


									  <div class="row">

										<div class="col-12 text-center">
										  <button id="finalValue"  type="submit" class="btn btn-danger mt-10">Submit</button>
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
function myFunctionc() {
  var x = document.getElementById("password_confirmation");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
  </body>
</html>


























