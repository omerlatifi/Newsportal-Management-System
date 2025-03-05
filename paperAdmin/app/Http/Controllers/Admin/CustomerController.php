<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\Admin;
use App\Models\Customer;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use File;
use Mail;
class CustomerController extends Controller
{
    public $user;


    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::guard('admin')->user();
            return $next($request);
        });
    }

    public function create(){

        if (is_null($this->user) || !$this->user->can('customerAdd')) {

           return redirect()->route('mainLogin');
        }

        \LogActivity::addToLog('create employee ');

       return view('admin.customer.create');
    }


    public function edit($id){
        if (is_null($this->user) || !$this->user->can('customerUpdate')) {

           return redirect()->route('mainLogin');
        }

            \LogActivity::addToLog('edit employee list');

            $user = Customer::find($id);

       return view('admin.customer.edit', compact('user'));
    }



    public function index()
    {

        if (is_null($this->user) || !$this->user->can('customerView')) {

           return redirect()->route('mainLogin');
        }

            \LogActivity::addToLog('view employee list');

            try{

                $users = Customer::orderBy('id','desc')->get();

           return view('admin.customer.index', compact('users'));

              } catch (\Exception $e) {
                return redirect()->back()->with('error','some thing went wrong ');
              }



    }


    public function postData(Request $request){


        try{
            DB::beginTransaction();
            // Create New User

            $customers = new Customer();
            $customers->address = $request->address;
            $customers->type = $request->type;
            $customers->status = 1;
            $customers->name = $request->name;
            $customers->reward_point = $request->reward_point;
            $customers->phone_number = $request->phone;
            $customers->email = $request->email;
            $customers->admin_id = Auth::guard('admin')->user()->id;

            $filePath = 'customerImage';
            if ($request->hasfile('employee_image')) {


                $file = $request->file('employee_image');
                $customers->image =  CommonController::imageUpload($request,$file,$filePath);

            }
            $customers->save();

            DB::commit();
            return redirect()->back()->with('success','Created successfully!');

           } catch (\Exception $e) {

            DB::rollBack();
            return redirect()->route('error_500');
           }


    }


    public function store(Request $request)
    {



        if (is_null($this->user) || !$this->user->can('customerAdd')) {

           return redirect()->route('mainLogin');

        }

        \LogActivity::addToLog(' employee store');


        // Validation Data
        $request->validate([
            'name' => 'required|string|max:150',
            'phone' => 'required|string|size:11',
            //'sign' => 'nullable|file|mimes:jpeg,png,jpg',
            'image' => 'nullable|file|mimes:jpeg,png,jpg',
        ],
        [
            'name.required' => 'Name is required',
            'phone.required' => 'Phone is required',
           // 'sign.nullable' => 'Sign is required',
            'image.nullable' => 'Image is required',
        ]);

       try{
        DB::beginTransaction();
        // Create New User

        $customers = new Customer();
        $customers->address = $request->address;
        $customers->type = $request->type;
        $customers->status = 1;
        $customers->name = $request->name;
        $customers->reward_point = $request->reward_point;
        $customers->phone_number = $request->phone;
        $customers->email = $request->email;
        $customers->admin_id = Auth::guard('admin')->user()->id;

        $filePath = 'customerImage';
        if ($request->hasfile('employee_image')) {


            $file = $request->file('employee_image');
            $customers->image =  CommonController::imageUpload($request,$file,$filePath);

        }
        $customers->save();

        DB::commit();
        return redirect()->route('customer.index')->with('success','Created successfully!');

       } catch (\Exception $e) {

        DB::rollBack();
        return redirect()->route('error_500');
       }
    }


    public function update(Request $request,$id)
    {

        if (is_null($this->user) || !$this->user->can('customerUpdate')) {

            return redirect()->route('mainLogin');
        }

        \LogActivity::addToLog('update employee list');




        // Create New User
        $customers = Customer::find($id);
        $customers->address = $request->address;
        $customers->type = $request->type;
        $customers->status = $request->status;
        $customers->name = $request->name;
        $customers->reward_point = $request->reward_point;
        $customers->phone_number = $request->phone;
        $customers->email = $request->email;
        $filePath = 'customerImage';
        if ($request->hasfile('employee_image')) {


            $file = $request->file('employee_image');
            $customers->image =  CommonController::imageUpload($request,$file,$filePath);

        }

        $customers->save();



        return redirect()->route('customer.index')->with('success','Updated successfully!');;
    }


    public function destroy($id)
    {

        if (is_null($this->user) || !$this->user->can('customerDelete')) {

            return redirect()->route('mainLogin');
        }

               \LogActivity::addToLog('delete employee from list');

        try{
                $customers = Customer::find($id);
                if (!is_null($customers)) {
                    $customers->delete();
                }
                return redirect()->route('customer.index')->with('error','Deleted successfully!');
            } catch (\Exception $e) {
                return redirect()->back()->with('error','some thing went wrong ');
            }


    }
}
