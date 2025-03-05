@extends('admin.master.master')

@section('title')
Add Employee
@endsection


@section('css')

@endsection

@section('body')
<div class="content-body">
    <div class="container-fluid">
         <div class="page-titles">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Employee Add</h4>
        </div>

    </div>
</div>

<section class="content">
    <form class="custom-validation" action="{{ route('user.store') }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
        @csrf
    <div class="row">
        <div class="col-lg-6 col-sm-12">
            <div class="card">
                <div class="card-body">
                    <div class="progress" style="display: none;">
                        <div class="bar"></div >
                        <div class="percent">0%</div >
                    </div>

@include('flash_message')
                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">Employee Name</label>

                            <input type="text" class="form-control" id="name" name="name" data-parsley-maxlength="150" placeholder="Name" required>

                            @if ($errors->has('name'))
                            <span class="text-danger">{{ $errors->first('name') }}</span>
                        @endif
                        </div>
                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">Phone Number</label>
                            <input  oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                            type = "number"
                            maxlength = "11" class="form-control form-control-sm" id="text" data-parsley-length="[11, 11]" name="phone" placeholder="Phone Number" required>

                            @if ($errors->has('phone'))
                          <span class="text-danger">{{ $errors->first('phone') }}</span>
                      @endif
                        </div>
                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">Employee Email</label>
                            <input type="text" class="form-control form-control-sm" data-parsley-maxlength="100" id="email" name="email" placeholder="Email" required>

                            @if ($errors->has('email'))
                          <span class="text-danger">{{ $errors->first('email') }}</span>
                      @endif
                        </div>
                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">Permanent Address</label>
                            <input type="text" name="address" class="form-control" placeholder="Address" required>
                        </div>
                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">Present Address</label>
                            <input type="text" name="present_address" class="form-control" placeholder="Address" required>
                        </div>
                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">NID Number</label>
                            <input type="text" name="nid_number" class="form-control" placeholder="Nid Number" required>
                        </div>
                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">Designation</label>
                            <input type="text" name="designation_list_id" required placeholder="Designation" class="form-control">
                        </div>

                        <div class="form-group">
                            <label class="fw-700 fs-16 form-label">Role</label>
                            {{-- <select name="roles[]" id="roles" multiple="multiple"  class="form-control form-control-sm js-example-basic-multiple" required> --}}


                                <select name="roles[]" class="form-control js-example-basic-multiple" multiple="multiple" data-placeholder="Select a Role"
								style="width: 100%;" required>


                                @foreach ($roles as $role)
                                 <option value="{{ $role->name }}">{{ $role->name }}</option>
                                @endforeach
                            </select>
                        </div>

                </div>
            </div>
        </div>

        <div class="col-lg-6 col-sm-12">
            <div class="card">
                <div class="card-body">
                    <div class="category_demo text-start">
                        <img id="blahone" src="{{ asset('/') }}public/adminold/assets/images/progga_images/demo_product/img2.jpg" alt=""
                             class="mb-15">
                        <div class="mb-3">
                            <label class="form-label">Employee Images</label>
                            <small class="text-danger"> * (Ratio 1:1)</small>
                            <input class="form-control" name="employee_image" accept="image/*" type='file' id="imgInpone" required/>
                        </div>
                    </div>

                    <div class="category_demo text-start">
                        <img id="blah" src="{{ asset('/') }}public/adminold/assets/images/progga_images/demo_product/img2.jpg" alt=""
                             class="mb-15">
                        <div class="mb-3">
                            <label class="form-label">Employee NID</label>
                            <small class="text-danger"> * (Ratio 1:1)</small>
                            <input class="form-control" name="employee_nid" accept="image/*" type='file' id="imgInp" required/>
                        </div>
                    </div>
                </div>
            </div>
           
        </div>

    </div>
    <div class="form-actions mt-10">
        <button type="submit" class="btn btn-primary"> <i class="fa fa-check"></i> Save / Add</button>
    </div>
</form>
</section>

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
<script>
    $(document).ready(function(){
      $("#is_supervisor").change(function(){

        var supValue = $(this).val();

        if(supValue == 'Yes'){

            $('select[name="supervisor_name"]').attr('disabled', 'disabled');

        }else{

            $('select[name="supervisor_name"]').removeAttr('disabled', 'disabled');

        }


      });
    });
    </script>



@endsection
