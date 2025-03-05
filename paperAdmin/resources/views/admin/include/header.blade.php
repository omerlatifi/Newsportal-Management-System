@php
$usr = Auth::guard('admin')->user();
@endphp
<div class="header">
    <div class="header-content">
        <nav class="navbar navbar-expand">
            <div class="collapse navbar-collapse justify-content-between">
                <div class="header-left">
                    <div class="dashboard_bar">
                        
                    </div>
                </div>
                <ul class="navbar-nav header-right">
                    
                    
                    <li class="nav-item dropdown notification_dropdown">
                        <a class="nav-link" href="{{url('clear')}}" role="button" title="Refresh">
                            <i class="fa fa-refresh"></i>
                          
                        </a>
                        
                    </li>
                    <li class="nav-item dropdown header-profile">
                        <a class="nav-link" href="javascript:void(0)" role="button" data-bs-toggle="dropdown">

                            @if(empty(Auth::guard('admin')->user()->admin_image))
                        <img src="{{ asset('/') }}public/admin/assets/images/avatar/avatar-10.png" width="20" alt="User Image">
                        @else
                        <img src="{{asset('/')}}{{ Auth::guard('admin')->user()->admin_image }}" width="20"alt="User Image">

                        @endif


                        </a>
                        <div class="dropdown-menu dropdown-menu-end">
                            <a href="{{ route('profile.index') }}" class="dropdown-item ai-icon">
                                <svg id="icon-user1" xmlns="http://www.w3.org/2000/svg" class="text-primary" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                                <span class="ms-2">Profile </span>
                            </a>
                            <a href="{{ route('setting.index') }}" class="dropdown-item ai-icon">
                               <i class="fa fa-gear" style="height: 18px;width:18px;color:green;"></i>
                                <span class="ms-2">Setting </span>
                            </a>
                            <a href="{{ route('admin.logout.submit') }}"  onclick="event.preventDefault();
                            document.getElementById('admin-logout-form').submit();" class="dropdown-item ai-icon">
                                <svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path><polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg>
                                <span class="ms-2">Logout </span>
                            </a>
                            <form id="admin-logout-form" action="{{ route('admin.logout.submit') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>







