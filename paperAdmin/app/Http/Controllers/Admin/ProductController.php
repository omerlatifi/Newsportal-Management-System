<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Admin;
use App\Models\ProductAddOn;
use App\Models\ProductAttribute;
use App\Models\ProductVariation;
use App\Models\ProductVariationList;
use App\Models\SubCategory;
use App\Models\Category;
use App\Models\Vendor;
use App\Models\FoodType;
use App\Models\Inventory;
use App\Models\Product;
use App\Models\AssaignQuantiy;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
use Image;
class ProductController extends Controller
{
    public $user;


    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::guard('admin')->user();
            return $next($request);
        });
    }


    public  function index(){

        if (is_null($this->user) || !$this->user->can('productView')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Product View');


            $categoryList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();
            $productAttributeList = ProductAttribute::orderBy('id','desc')->get();
            $productAddOnList = ProductAddOn::orderBy('id','desc')->get();
            $foodTypeList = FoodType::orderBy('id','asc')->get();
            $inventoryList = Inventory::orderBy('id','asc')->get();
            $productList = Product::orderBy('id','desc')->get();

            return view('admin.productList.index',compact('inventoryList','foodTypeList','productList','categoryList','subcategoryList','productAttributeList','productAddOnList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }

    }


    public  function show($id){

        if (is_null($this->user) || !$this->user->can('productView')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Product View');


            $categoryList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();
            $productAttributeList = ProductAttribute::orderBy('id','desc')->get();
            $productAddOnList = ProductAddOn::orderBy('id','desc')->get();


            $productList = Product::find($id);

            return view('admin.productList.show',compact('productList','categoryList','subcategoryList','productAttributeList','productAddOnList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }

    }

    public  function edit($id){

        if (is_null($this->user) || !$this->user->can('productView')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Product View');
            $assaignQuantity = AssaignQuantiy::where('product_id',$id)->latest()->get();
            $vendorList = Vendor::orderBy('id','asc')->get();
            $categoryList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();
            $productAttributeList = ProductAttribute::orderBy('id','desc')->get();
            $productAddOnList = ProductAddOn::orderBy('id','desc')->get();
            $inventoryList = Inventory::orderBy('id','asc')->get();
            $foodTypeList = FoodType::orderBy('id','asc')->get();
            $product = Product::find($id);

            return view('admin.productList.edit',compact('vendorList','foodTypeList','inventoryList','assaignQuantity','product','categoryList','subcategoryList','productAttributeList','productAddOnList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }

    }


    public function create()
    {
        if (is_null($this->user) || !$this->user->can('productAdd')) {

            return redirect()->route('mainLogin');
        }

        try{

            \LogActivity::addToLog('Product Add');

$foodTypeList = FoodType::orderBy('id','asc')->get();
            $inventoryList = Inventory::orderBy('id','asc')->get();
            $categoryList = Category::orderBy('id','asc')->get();
            $subcategoryList = SubCategory::orderBy('id','asc')->get();
            $productAttributeList = ProductAttribute::orderBy('id','desc')->get();
            $productAddOnList = ProductAddOn::orderBy('id','desc')->get();
            $vendorList = Vendor::orderBy('id','asc')->get();
            return view('admin.productList.create',compact('vendorList','inventoryList','foodTypeList','categoryList','subcategoryList','productAttributeList','productAddOnList'));

        } catch (\Exception $e) {
            return redirect()->route('error_500');
        }
    }


    public function getSubCategoryId(Request $request){

        $subcategoryList = SubCategory::where('category_id',$request->value)
        ->orderBy('id','asc')->get();

        return $data = view('admin.productList.getSubCategoryId',compact('subcategoryList'));

    }



    public function store(Request $request){
        if (is_null($this->user) || !$this->user->can('productAdd')) {

            return redirect()->route('mainLogin');
        }



        try{

            DB::beginTransaction();

        $product= new Product();
        $product->product_name = $request->product_name;
        $product->chinese_name = $request->product_code;
        $product->product_slug = Str::slug($request->product_name);
        $product->category_id = $request->vendor_id;
        $filePath="newProduct";
        if ($request->hasfile('product_image')) {
            $product->product_image = CommonController::compressImage(300,300,$filePath,$request->product_image);
           }

        $product->save();



        DB::commit();

        return redirect()->route('productList.index')->with('success','Added successfully!');

    } catch (\Exception $e) {

        DB::rollBack();
       // return redirect()->route('error_500');

       return redirect()->route('error_500');

        }

    }


    public function update(Request $request,$id){

        if (is_null($this->user) || !$this->user->can('productUpdate')) {

            return redirect()->route('mainLogin');
        }


        try{

            DB::beginTransaction();

        $product=Product::find($id);
        $product->product_name = $request->product_name;
        $product->chinese_name = $request->product_code;
        $filePath="newProduct";
        $product->product_slug = Str::slug($request->product_name);
        $product->category_id = $request->vendor_id;
        if ($request->hasfile('product_image')) {
            $product->product_image = CommonController::compressImage(300,300,$filePath,$request->product_image);
           }

        $product->save();

        DB::commit();

        return redirect()->route('productList.index')->with('success','Updated successfully!');

    } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');

        }

    }


    public function productStatusUpdate(Request $request){


        $product = Product::find($request->id);
        $product->available_status = $request->status;
        $product->save();

        return 1;


 }


 public function destroy($id)
    {
        if (is_null($this->user) || !$this->user->can('productDelete')) {

            return redirect()->route('mainLogin');
        }

        try{
            DB::beginTransaction();
            \LogActivity::addToLog('product delete ');

            Product::destroy($id);

            DB::commit();
            return redirect()->route('productList.index')->with('error','Deleted successfully!');

        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->route('error_500');
        }
    }
}
