@php
$usr = Auth::guard('admin')->user();
@endphp

<aside class="main-sidebar">
    <!-- sidebar-->
    <section class="sidebar position-relative">
        <div class="multinav">
            <div class="multinav-scroll" style="height: 100%;">
                <!-- sidebar menu-->
                <ul class="sidebar-menu" data-widget="tree">

                    <li>
                        <a href="{{ route('admin.dashboard') }}">
                            <i class="icon-Home"><span class="path1"></span><span class="path2"></span></i>
                            <span>Dashboard</span>
                        </a>
                    </li>

                    @if ($usr->can('vendorAdd') || $usr->can('vendorView') || $usr->can('vendorDelete') || $usr->can('vendorUpdate'))

                    <li class="{{ Route::is('vendor.index') || Route::is('vendor.edit') ? 'active' : '' }}">
                        <a href="{{ route('vendor.index') }}" class="{{ Route::is('vendor.index') || Route::is('vendor.edit') ? 'active' : '' }}">
                            <i class="fa fa-industry"><span class="path1"></span><span class="path2"></span></i>
                            Company List
                        </a>
                    </li>

                    @endif


                    @if ($usr->can('productAdd') || $usr->can('productView') ||  $usr->can('productDelete') ||  $usr->can('productUpdate'))
                    <li class="{{ Route::is('productList.show') || Route::is('productList.create') || Route::is('productList.index') || Route::is('productList.edit') ? 'active' : '' }}">
                        <a href="{{ route('productList.index') }}" class="{{ Route::is('productList.show') || Route::is('productList.create') || Route::is('productList.index') || Route::is('productList.edit') ? 'active' : '' }}">
                            <i class="fa fa-file"><span class="path1"></span><span class="path2"></span></i>
                            Product List
                        </a>
                    </li>
                    @endif
                   
                   
   @if ($usr->can('unitAdd') || $usr->can('unitView') || $usr->can('unitDelete') || $usr->can('unitUpdate'))

                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-file"><span class="path1"></span><span class="path2"></span></i>
                            <span>Inventory</span>
                            <span class="pull-right-container">
					  <i class="fa fa-angle-right pull-right"></i>
					</span>
                        </a>
                        <ul class="treeview-menu">

                            @if ($usr->can('unitAdd') || $usr->can('unitView') || $usr->can('unitDelete') || $usr->can('unitUpdate'))
                            <li class="{{ Route::is('unit.index') || Route::is('unit.edit') ? 'active' : '' }}">
                                <a href="{{ route('unit.index') }}" class="{{ Route::is('unit.index') || Route::is('unit.edit') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>WareHouse/Shop List</a>
                            </li>
                            @endif

                    @if ($usr->can('inventoryAdd') || $usr->can('inventoryView') || $usr->can('inventoryDelete') || $usr->can('inventoryUpdate'))
                    <li class="{{ Route::is('inventory.index') || Route::is('inventory.edit') ? 'active' : '' }}">
                        <a href="{{ route('inventory.index') }}" class="{{ Route::is('inventory.index') || Route::is('inventory.edit') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Inventory List</a>
                    </li>
                    @endif
                        </ul>
                    </li>
                    @endif
                    @if ($usr->can('productAdd') || $usr->can('productView') ||  $usr->can('productDelete') ||  $usr->can('productUpdate'))
                    <li class="{{ Route::is('sell.show') || Route::is('sell.create') || Route::is('sell.index') || Route::is('sell.edit') ? 'active' : '' }}">
                        <a href="{{ route('sell.index') }}" class="{{ Route::is('sell.show') || Route::is('sell.create') || Route::is('sell.index') || Route::is('sell.edit') ? 'active' : '' }}">
                            <i class="fa fa-file-text"><span class="path1"></span><span class="path2"></span></i>
                            Challan/Sell List
                        </a>
                    </li>
                    @endif
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-file-o"><span class="path1"></span><span class="path2"></span></i>
                            <span>Report</span>
                            <span class="pull-right-container">
					  <i class="fa fa-angle-right pull-right"></i>
					</span>
                        </a>
                        <ul class="treeview-menu">

                        
                            <li class="treeview">
                                <a href="#">
                                    <i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Challan\Sell
                                    <span class="pull-right-container">
                                        <i class="fa fa-angle-right pull-right"></i>
                                    </span>
                                </a>
                                <ul class="treeview-menu" >
                                    
                                    <li  class="{{ Route::is('dateWiseSell') || Route::is('dateWiseSellSearch') ? 'active' : '' }}"><a href="{{ route('dateWiseSell') }}" class="{{ Route::is('dateWiseSell') || Route::is('dateWiseSellSearch') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Date Wise Report</a></li>
                                    <li class="{{ Route::is('monthWiseSell') || Route::is('monthWiseSellSearch') ? 'active' : '' }}"><a href="{{ route('monthWiseSell') }}" class="{{ Route::is('monthWiseSell') || Route::is('monthWiseSellSearch')  ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Month Wise Report</a></li>
                                    <li  class="{{ Route::is('yearWiseSell') || Route::is('yearWiseSellSearch') ? 'active' : '' }}"><a href="{{ route('yearWiseSell') }}" class="{{  Route::is('yearWiseSell') || Route::is('yearWiseSellSearch') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Year Wise Report</a></li>	
                                    
                                </ul>
                            </li>
                           
                            <li class="treeview">
                                <a href="#">
                                    <i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Inventory
                                    <span class="pull-right-container">
                                        <i class="fa fa-angle-right pull-right"></i>
                                    </span>
                                </a>
                                <ul class="treeview-menu" >
                                    
                                    <li  class="{{ Route::is('dateWiseInventory') || Route::is('dateWiseInventorySearch')  ? 'active' : '' }}"><a href="{{ route('dateWiseInventory') }}" class="{{ Route::is('dateWiseInventory') || Route::is('dateWiseInventorySearch')  ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Date Wise Report</a></li>
                                    <li class="{{ Route::is('monthWiseInventory') || Route::is('monthWiseInventorySearch')  ? 'active' : '' }}"><a href="{{ route('monthWiseInventory') }}" class="{{ Route::is('monthWiseInventory') || Route::is('monthWiseInventorySearch')   ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Month Wise Report</a></li>
                                    <li  class="{{ Route::is('yearWiseInventory') || Route::is('yearWiseInventorySearch') ? 'active' : '' }}"><a href="{{ route('yearWiseInventory') }}" class="{{  Route::is('yearWiseInventory') || Route::is('yearWiseInventorySearch') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Year Wise Report</a></li>	
                                    
                                </ul>
                            </li>
                           

                           
                  
                        </ul>
                    </li>

 @if ($usr->can('systemInformationAdd') || $usr->can('systemInformationView') || $usr->can('systemInformationDelete') || $usr->can('systemInformationUpdate'))
                    <li class="header">System Management</li>

                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-gear"><span class="path1"></span><span class="path2"></span></i>
                            <span>General Setting</span>
                            <span class="pull-right-container">
					  <i class="fa fa-angle-right pull-right"></i>
					</span>
                        </a>
                        <ul class="treeview-menu">




                            @if ($usr->can('systemInformationAdd') || $usr->can('systemInformationView') || $usr->can('systemInformationDelete') || $usr->can('systemInformationUpdate'))
                            <li class="{{ Route::is('systemInformation.index') ? 'active' : '' }}">
                                <a href="{{ route('systemInformation.index') }}" class="{{ Route::is('systemInformation.index') ? 'active' : '' }}" ><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>System</a>
                            </li>
                            @endif

                            @if ($usr->can('roleAdd') || $usr->can('roleView') || $usr->can('roleDelete') || $usr->can('roleUpdate'))
                            {{-- <li class="{{ Route::is('role.index') || Route::is('role.edit') || Route::is('role.create') ? 'active' : '' }}">
                                <a href="{{ route('role.index') }}" class="{{ Route::is('role.index') || Route::is('role.edit') || Route::is('role.create') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i>Role</a>
                            </li> --}}
                            @endif
                            @if ($usr->can('permissionAdd') || $usr->can('permissionView') || $usr->can('permissionDelete') || $usr->can('permissionUpdate'))
                            {{-- <li class="{{ Route::is('permission.index') ? 'active' : '' }}">
                                <a href="{{ route('permission.index') }}" class="{{ Route::is('permission.index') ? 'active' : '' }}"><i class="icon-Commit"><span class="path1"></span><span class="path2"></span></i><span>Permission</span>
                            </a>
                            </li> --}}
                            @endif


                        </ul>
                    </li>
                    @endif

                </ul>

                <div class="sidebar-widgets">

                    <div class="copyright text-start m-25">
                        <p><strong class="d-block">{{ $ins_name }}</strong> © 2024 All Rights Reserved</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</aside>

