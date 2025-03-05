@extends('admin.master.master')

@section('title')
Role List
@endsection


@section('body')

<div class="content-body">
    <div class="container-fluid">
         <div class="page-titles">

    <div class="d-flex align-items-center">
        <div class="me-auto">
            <h4 class="page-title">Role Information</h4>
        </div>

    </div>
    <div class="row">


        <div class="col-lg-12 col-md-12 col-sm-12">
            <div style="text-align: right;">
                <a href="{{ route('role.create') }}" type="button" class="btn btn-primary btn-sm"><span class="btn-icon-end"><i class="fa fa-plus"></i></span> Add New Role</a>
            </div>
        </div>

    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <div class="table-responsive">
                        <table id="example3" class="display min-w850">
                            <thead>
                                <tr>

                                        <th>Sl</th>
                                        <th>Role Name</th>
                                        <th >Permission List</th>
                                        <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($roles as $role)

                                <tr>
                                   <td>

                                    {{ $loop->index+1 }}

                                    <td>{{ $role->name }}</td>
                                    <td >



                                        @foreach ($role->permissions as $key=>$perm)


                                        @if(($key+1) == 6)
                                            {{ $perm->name }},<br>

                                            @elseif(($key+1) == 12)
                                            {{ $perm->name }},<br>
                                            @elseif(($key+1) == 18)
                                            {{ $perm->name }},<br>
                                            @elseif(($key+1) == 24)

                                            {{ $perm->name }},<br>
                                            @elseif(($key+1) == 30)
                                            {{ $perm->name }},<br>

                                            @elseif(($key+1) == 36)
                                            {{ $perm->name }},<br>

                                            @elseif(($key+1) == 42)
                                            {{ $perm->name }},<br>

                                            @elseif(($key+1) == 48)
                                            {{ $perm->name }},<br>

                                            @elseif(($key+1) == 54)
                                            {{ $perm->name }},<br>

                                            @elseif(($key+1) == 60)
                                            {{ $perm->name }},<br>

                                            @else
                                            {{ $perm->name }},
                                            @endif


                                        @endforeach

                                    </td>

                                                <td>


                                                    <button type="button"  onclick="location.href = '{{ route('role.edit',$role->id) }}';"
                                                        class="btn btn-primary shadow btn-xs sharp me-1" >
                                                        <i class="fa fa-edit"></i></button>





                                                        <button type="button" class="btn btn-danger shadow btn-xs sharp" onclick="deleteTag({{ $role->id }})"><i class="fa fa-trash"></i></button>

 <form id="delete-form-{{ $role->id }}" action="{{ route('role.destroy',$role->id) }}" method="POST" style="display: none;">
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
