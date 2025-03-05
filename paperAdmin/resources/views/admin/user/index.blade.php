@extends('admin.master.master')

@section('title')
Employee List  | {{ $ins_name }}
@endsection


@section('css')

@endsection

@section('body')
<div class="content-body">
    <div class="container-fluid">
         <div class="page-titles">
    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Employee List</h4>
        </div>

        <div class="row">

            @if (Auth::guard('admin')->user()->can('userAdd'))
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div style="text-align: right;">
                    <a href="{{ route('user.create') }}" type="button" class="btn btn-primary btn-sm"><span class="btn-icon-end"><i class="fa fa-plus"></i></span> Add New Employee</a>
                </div>
            </div>
            @endif
        </div>

    </div>
</div>

<section class="content">

    <div class="row">
        <div class="col-lg-12 col-sm-12">
            <div class="card">
                <div class="card-body">
                    @include('flash_message')
                    <div class="table-responsive">
                        <table id="example3" class="table table-bordered table-hover display nowrap margin-top-10 w-p100">
                            <thead>
                            <tr>

                                <th>SL</th>
                                <th>Photo</th>
                                <th>Name</th>
                                <th>Designation</th>
                                <th>Present Address</th>
                                <th>Present Address</th>
                                <th>Phone</th>
                                <th>Email</th>
                                <th>Nid</th>
                                <th>Role</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $user)


                            <tr>
                               <td>{{ $loop->index+1 }} </td>

                            <td>
                                @if(empty($user->admin_image))
                                @else
<img src="{{ asset('/') }}{{ $user->admin_image }}" style="height:60px" />
@endif
                            </td>

                                <td>{{ $user->admin_name }}</td>

                                <td>
                                    
                                        {{ $user->designation_list_id}}</td>
                                <td>{{ $user->present_address }}</td>
                                <td>{{ $user->address }}</td>
                                <td>{{ $user->admin_mobile }}</td>
                                <td>{{ $user->email }}</td>

                                <td>{{ $user->nid_number }}</td>

                                <td>
                                    @foreach ($user->roles as $role)
                                    <span class="badge bg-success mt-1">
                                            {{ $role->name }}
                                    </span>
                                    @endforeach
                                </td>
                                <td>

                                    {{-- <button type="button"  onclick="location.href = '{{ route('user.show',$user->id) }}';"
                                        class="btn btn-info shadow btn-xs sharp me-1" >
                                        <i class="fa fa-eye"></i></button> --}}



                                      <button type="button"  onclick="location.href = '{{ route('user.edit',$user->id) }}';"
                                      class="btn btn-primary shadow btn-xs sharp " >
                                      <i class="fa fa-pencil"></i></button>

                                      @if($user->id == 5)

                                      @else

<button   type="button" class="btn btn-danger shadow btn-xs sharp" onclick="deleteTag({{ $user->id}})" data-toggle="tooltip" title="Delete"><i class="fa fa-trash"></i></button>
                @endif

<form id="delete-form-{{ $user->id }}" action="{{ route('user.destroy',$user->id) }}" method="POST" style="display: none;">
                  @method('DELETE')
                                                @csrf

                                            </form>

                                </td>
                            </tr>
@endforeach

                    </table>
                </div>

                </div>
            </div>
        </div>



    </div>


</section>
    </div>
</div>
@endsection

@section('script')

@endsection







