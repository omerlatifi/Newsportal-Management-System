@php
$usr = Auth::guard('admin')->user();
@endphp
<div class="deznav">
    <div class="deznav-scroll">
        <ul class="metismenu" id="menu">


            <li><a href="{{ route('admin.dashboard') }}" class="ai-icon" aria-expanded="false">
                <i class="flaticon-381-home"></i>
                <span class="nav-text">Dashboard</span>
            </a>
        </li>
        @if ($usr->can('categoryAdd') || $usr->can('categoryView') ||  $usr->can('categoryDelete') ||  $usr->can('categoryUpdate'))
        <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
            <i class="flaticon-381-notepad"></i>
            <span class="nav-text">Category Setup</span>
        </a>
        <ul aria-expanded="false">
            @if ($usr->can('categoryAdd') || $usr->can('categoryView') ||  $usr->can('categoryDelete') ||  $usr->can('categoryUpdate'))
                            <li class="{{ Route::is('categoryList.index') || Route::is('categoryList.edit') || Route::is('categoryList.create') ? 'active' : '' }}"><a href="{{ route('categoryList.index') }}" class="{{ Route::is('categoryList.index') || Route::is('categoryList.edit') || Route::is('categoryList.create') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Category List</a></li>
                            @endif
                            @if ($usr->can('subcategoryAdd') || $usr->can('subcategoryView') ||  $usr->can('subcategoryDelete') ||  $usr->can('subcategoryUpdate'))
                            <li class="{{ Route::is('subcategoryList.index') || Route::is('subcategoryList.edit') || Route::is('subcategoryList.create') ? 'active' : '' }}"><a href="{{ route('subcategoryList.index') }}" class="{{ Route::is('subcategoryList.index') || Route::is('subcategoryList.edit') || Route::is('subcategoryList.create') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Sub Category List</a></li>
                            @endif
        </ul>
    </li>
    @endif


    @if ($usr->can('newsAdd') || $usr->can('newsView') || $usr->can('newsDelete') || $usr->can('newsUpdate'))
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                    <i class="flaticon-381-newspaper"></i>
                    <span class="nav-text">Bangla News</span>
                </a>
                <ul aria-expanded="false">
                    @if ($usr->can('newsAdd'))
                    <li class="{{ Route::is('news.create') ? 'active' : '' }}"><a href="{{ route('news.create') }}">Create News</a></li>
@endif

@if ($usr->can('imagenews'))
                    <li class="{{ Route::is('uploadImageNews') ? 'active' : '' }}"><a href="{{ route('uploadImageNews') }}">Image</a></li>
                    @endif
                    @if ($usr->can('videonews'))
                    <li class="{{ Route::is('uploadVideoNews') ? 'active' : '' }}"><a href="{{ route('uploadVideoNews') }}">Video</a></li>
                    @endif
@if ($usr->can('newsView') || $usr->can('newsUpdate') || $usr->can('newsDelete'))
                    <li class="{{ Route::is('news.index') ? 'active' : '' }}"><a href="{{ route('news.index') }}">News List</a></li>
@endif
@if ($usr->can('draftnews'))
                    <li class="{{ Route::is('banglaNewsDraft') ? 'active' : '' }}"><a href="{{ route('banglaNewsDraft') }}">Draft List</a></li>
@endif
@if ($usr->can('pendingnews'))
                    <li class="{{ Route::is('pendingNewsList') ? 'active' : '' }}"><a href="{{ route('pendingNewsList') }}">Pending News List</a></li>
@endif

                    @if ($usr->can('recyclenews'))
                    <li class="{{ Route::is('banglaNewsTrash') ? 'active' : '' }}"><a href="{{ route('banglaNewsTrash') }}">Recycle bin</a></li>
                    @endif
                </ul>
            </li>
            @endif


            @if ($usr->can('englishNewsAdd') || $usr->can('englishNewsView') || $usr->can('englishNewsDelete') || $usr->can('englishNewsUpdate'))
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                    <i class="flaticon-381-news"></i>
                    <span class="nav-text">English News</span>
                </a>
                <ul aria-expanded="false">
                    @if ($usr->can('englishNewsAdd'))
                    <li class="{{ Route::is('englishNews.create') ? 'active' : '' }}"><a href="{{ route('englishNews.create') }}">Create News</a></li>
                    @endif
                    @if ($usr->can('imageenglishnews'))
                    <li class="{{ Route::is('englishUploadImageNews') ? 'active' : '' }}"><a href="{{ route('englishUploadImageNews') }}">Image</a></li>
                    @endif
                    @if ($usr->can('videoenglishnews'))
                    <li class="{{ Route::is('englishUploadVideoNews') ? 'active' : '' }}"><a href="{{ route('englishUploadVideoNews') }}">Video</a></li>
                    @endif
                    @if ($usr->can('englishNewsView') || $usr->can('englishNewsUpdate') || $usr->can('englishNewsDelete'))
                    <li class="{{ Route::is('englishNews.Index') ? 'active' : '' }}"><a href="{{ route('englishNews.index') }}">News List</a></li>
@endif
                    @if ($usr->can('draftenglishnews'))
                    <li class="{{ Route::is('englishBanglaNewsDraft') ? 'active' : '' }}"><a href="{{ route('englishBanglaNewsDraft') }}">Draft List</a></li>
@endif
@if ($usr->can('pendingenglishnews'))
                    <li class="{{ Route::is('englishPendingNewsList') ? 'active' : '' }}"><a href="{{ route('englishPendingNewsList') }}">Pending News List</a></li>
@endif

                    @if ($usr->can('recycleenglishnews'))
                    <li class="{{ Route::is('englishBanglaNewsTrash') ? 'active' : '' }}"><a href="{{ route('englishBanglaNewsTrash') }}">Recycle bin</a></li>
                    @endif
                </ul>
            </li>
            @endif

            @if ($usr->can('imagelinkAdd') || $usr->can('imagelinkView') || $usr->can('imagelinkDelete') || $usr->can('imagelinkUpdate'))
            <li class="{{ Route::is('imageLink.index') ? 'active' : '' }}"><a href="{{ route('imageLink.index') }}" class="ai-icon" aria-expanded="false">
                <i class="flaticon-381-photo"></i>
                <span class="nav-text">Image Link List</span>
            </a>
        </li>
        @endif

        @if ($usr->can('linkAdd') || $usr->can('linkView') || $usr->can('linkDelete') || $usr->can('linkUpdate'))
            <li class="{{ Route::is('link.index') ? 'active' : '' }}"><a href="{{ route('link.index') }}" class="ai-icon" aria-expanded="false">
                <i class="flaticon-381-link"></i>
                <span class="nav-text">Social Link List</span>
            </a>
        </li>
        @endif

            @if ($usr->can('teamAdd') || $usr->can('teamView') || $usr->can('teamDelete') || $usr->can('teamUpdate'))
            <li class="{{ Route::is('user.index') ? 'active' : '' }}"><a href="{{ route('user.index') }}" class="ai-icon" aria-expanded="false">
                <i class="flaticon-381-user"></i>
                <span class="nav-text">Employee List</span>
            </a>
        </li>
        @endif

            <!-- setting start-->
            @if ($usr->can('systemInformationAdd') || $usr->can('systemInformationView') || $usr->can('systemInformationDelete') || $usr->can('systemInformationUpdate'))
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                    <i class="flaticon-381-settings-2"></i>
                    <span class="nav-text">Setting</span>
                </a>
                <ul aria-expanded="false">
                    @if ($usr->can('systemInformationAdd') || $usr->can('systemInformationView') || $usr->can('systemInformationDelete') || $usr->can('systemInformationUpdate'))
                    <li class="{{ Route::is('systemInformation.index') ? 'active' : '' }}">
                        <a href="{{ route('systemInformation.index') }}" class="{{ Route::is('systemInformation.index') ? 'active' : '' }}" ><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>System</a>
                    </li>
                    @endif

                    @if ($usr->can('roleAdd') || $usr->can('roleView') || $usr->can('roleDelete') || $usr->can('roleUpdate'))
                    <li class="{{ Route::is('role.index') || Route::is('role.edit') || Route::is('role.create') ? 'active' : '' }}">
                        <a href="{{ route('role.index') }}" class="{{ Route::is('role.index') || Route::is('role.edit') || Route::is('role.create') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Role</a>
                    </li>
                    @endif
                    @if ($usr->can('permissionAdd') || $usr->can('permissionView') || $usr->can('permissionDelete') || $usr->can('permissionUpdate'))
                    <li class="{{ Route::is('permission.index') ? 'active' : '' }}">
                        <a href="{{ route('permission.index') }}" class="{{ Route::is('permission.index') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i><span>Permission</span>
                    </a>
                    </li>
                    @endif
                </ul>
            </li>
            @endif
            <!-- setting end -->
        </ul>

        <div class="copyright">
            <p><strong>{{ $ins_name }}</strong> © 2025 All Rights Reserved</p>

        </div>
    </div>
</div>
