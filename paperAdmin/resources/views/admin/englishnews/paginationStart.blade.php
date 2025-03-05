<div class="table-responsive">
    <table  class="table table-bordered" style="width:100%">
        <thead>
        <tr>
            <th>SL</th>
                                <th>Image</th>
                                <th>Category & Subcategory</th>
                                <th>Title</th>
                                <th>Publish Date & Time</th>
                                <th>Created By</th>
                                <th>Approve Status</th>
                                <th>Action</th>
        </tr>
        </thead>
        <tbody>

            @foreach($product_list as $key=>$productLists)
        <tr >
            @if($minus_one == 0)
            <td style="width: 5%">{{ $key+1 }}</td>
            @else
            <td style="width: 5%">{{ $minus_one = $minus_one+1 }}</td>
            @endif
            <td style="width: 10%">


                @if($productLists->video_news == 1)
                <iframe width="100" height="100"
                src="{{ $productLists->image_caption }}" title="YouTube video player"
                frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

                @else

                    @if(empty($productLists->image))
                    <img class="table_image_card" style="height:50px;" src="{{ asset('/') }}public/adminold/product-not-found.jpg" alt=""/>
                    @else
                    <img class="table_image_card" style="height:50px;" src="{{ asset('/') }}{{ $productLists->image }}" alt=""/>
                    @endif

                    @endif

            </td>
        <td style="width: 15%">

           <p> Category : {{ \App\Models\Category::where('id',$productLists->category)->value('category_name') }}</p>

           @if(empty($productLists->sub_category))

           @else
           <p>Sub-Category : {{ \App\Models\SubCategory::where('id',$productLists->sub_category)->value('subcategory_name') }}</p>
           @endif


        </td>




        <td style="width: 35%">

{{ $productLists->title }}

        </td>


        <td style="width: 10%">
            <span class="badge badge-info">{{ date("d-m-Y", strtotime($productLists->create_date))}}</span>
            <br><br>
            <span class="badge badge-primary">{{ $productLists->create_time}}</span>
        </td>

        <td style="width: 5%">
            {{ \App\Models\Admin::where('id',$productLists->admin_id)->value('admin_name') }}
        </td>

        <td style="width: 5%">

            @if($productLists->approve_status == 1)
                 Approved
            @else

              Not Approved

            @endif
        </td>

        <td style="width: 15%">
            <a href="{{ route('englishNews.show',base64_encode($productLists->id)) }}" class="btn btn-info me-10 btn-sm" data-bs-toggle="tooltip" data-bs-original-title="View">
                <i class="fa fa-eye"></i>
            </a>
            <a href="{{ route('englishNews.edit',base64_encode($productLists->id)) }}" class="btn btn-primary me-10 btn-sm" data-bs-toggle="tooltip" data-bs-original-title="Edit">
                <i class="fa fa-edit"></i>
            </a>

            <a href="javascript:void(0)" onclick="trashTag({{ $productLists->id }})" class="btn btn-danger btn-sm" data-bs-original-title="Delete" data-bs-toggle="tooltip">
                <i class="fa fa-trash"></i>
            </a>

            <form id="delete-form-{{ $productLists->id }}" action="{{ route('englishNews.destroy',$productLists->id) }}" method="POST" style="display: none;">
                @method('DELETE')
                                                                  @csrf

                                                              </form>
        </td>
        </tr>
        @endforeach

        </tbody>
    </table>
</div>
@include('admin.englishnews.ajax_pagination')
<input type="hidden" id="searchCat" value="0" />
