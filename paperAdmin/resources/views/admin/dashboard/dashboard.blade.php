@extends('admin.master.master')

@section('title')
Dashboard
@endsection


@section('body')
<div class="content-body">
    <!-- row -->
    <div class="container-fluid">
        <div class="form-head d-flex align-items-center mb-sm-4 mb-3">
            <div class="me-auto">
                <h2 class="text-black font-w600">Dashboard</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-3 col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <div class="media align-items-center">
                            <div class="media-body me-3">
                                <h2 class="fs-34 text-black font-w600">{{ $totalNewsBangla }}</h2>
                                <span>Total Bangla News</span>
                            </div>
                            <i class="fa fa-newspaper-o" style="font-size:40px;color:green"></i>
                        </div>
                    </div>
                    <div class="progress  rounded-0" style="height:4px;">
                        <div class="progress-bar rounded-0 bg-secondary progress-animated" style="width: 50%; height:4px;" role="progressbar">
                            <span class="sr-only">50% Complete</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3  col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <div class="media align-items-center">
                            <div class="media-body me-3">
                                <h2 class="fs-34 text-black font-w600">{{ $totalNewsEnglish }}</h2>
                                <span>Total English News</span>
                            </div>
                            <i class="fa fa-newspaper-o" style="font-size:40px;color:green"></i>
                        </div>
                    </div>
                    <div class="progress  rounded-0" style="height:4px;">
                        <div class="progress-bar rounded-0 bg-secondary progress-animated" style="width: 90%; height:4px;" role="progressbar">
                            <span class="sr-only">90% Complete</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3  col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <div class="media align-items-center">
                            <div class="media-body me-3">
                                <h2 class="fs-34 text-black font-w600">{{ $totalNewsDraft }}</h2>
                                <span>Total News In Draft</span>
                            </div>
                            <i class="fa fa-file" style="font-size:40px;color:green"></i>
                        </div>
                    </div>
                    <div class="progress  rounded-0" style="height:4px;">
                        <div class="progress-bar rounded-0 bg-secondary progress-animated" style="width: 30%; height:4px;" role="progressbar">
                            <span class="sr-only">30% Complete</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3  col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <div class="media align-items-center">
                            <div class="media-body me-3">
                                <h2 class="fs-34 text-black font-w600">{{ $totalNewsre }}</h2>
                                <span>Total News in Trash</span>
                            </div>
                            <i class="fa fa-trash-o" style="font-size:40px;color:green"></i>
                        </div>
                    </div>
                    <div class="progress  rounded-0" style="height:4px;">
                        <div class="progress-bar rounded-0 bg-secondary progress-animated" style="width: 94%; height:4px;" role="progressbar">
                            <span class="sr-only">50% Complete</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
@endsection

@section('script')


@endsection



