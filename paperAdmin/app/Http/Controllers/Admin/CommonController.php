<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use File;
use DB;
use Image;
use Session;
class CommonController extends Controller
{

    public static  function storeBase64($height,$weight,$filePath,$imageBase64)
    {
        list($type, $imageBase64) = explode(';', $imageBase64);
        list(, $imageBase64)      = explode(',', $imageBase64);
        $imageBase64 = base64_decode($imageBase64);
        $imageName= $height.'x'.$weight.date('Y-d-m').time().mt_rand(1000000000, 9999999999).'.png';
        $path = public_path() . "/uploads/" .$filePath.'/'. $imageName;

        file_put_contents($path, $imageBase64);


        $img=Image::make($path)->resize($height,$weight, function ($constraint) {
            $constraint->aspectRatio();
        });

        //$img=Image::make($imageName);
        $img->save($path);


        $finalFile = 'public/uploads/'.$filePath.'/'.$imageName;

        return $finalFile;
    }

    public static  function compressImage($height,$weight,$filePath,$file){


        $path = public_path('uploads/'.$filePath);

        if(!File::isDirectory($path)){
            File::makeDirectory($path, 0777, true, true);
        }


       // $x=0;
        $imageName = date('Y-d-m').time().mt_rand(1000000000, 9999999999).".".$file->getClientOriginalExtension();
        $directory = 'public/uploads/'.$filePath.'/';
        $imageUrl = $directory.$imageName;
        //dd($imageUrl = $directory.'/'.$imageName);
        $img=Image::make($file)->resize($height,$weight);

        //$img=Image::make($imageName);
        $img->save($imageUrl);


        //dd($imageUrl);

        return $imageUrl;




    }


    public static  function profileImageUpload($request,$file,$filePath){


        $path = public_path('uploads/'.$filePath);

        if(!File::isDirectory($path)){
            File::makeDirectory($path, 0777, true, true);
        }


        $imageName = date('Y-d-m').time().mt_rand(1000000000, 9999999999).".".$file->getClientOriginalExtension();
        $directory = 'public/uploads/';
        $imageUrl = $directory.$imageName;

        $img=Image::make($productImage)->resize(200,200);
        //$img=Image::make($imageName);
        $img->save($imageUrl);


        // $extension = date('Y-d-m').time().mt_rand(1000000000, 9999999999).".".$file->getClientOriginalExtension();
        // $filename = $extension;
        // $file->move('public/uploads/'.$filePath.'/', $filename);
        // $imageUrl =  'public/uploads/'.$filePath.'/'.$filename;


    return $imageUrl;
    //$imageUrl = $this->imageUpload($request);

    }

    public static  function imageUpload($request,$file,$filePath){


        $path = public_path('uploads/'.$filePath);

        if(!File::isDirectory($path)){
            File::makeDirectory($path, 0777, true, true);
        }


        $extension = date('Y-d-m').time().mt_rand(1000000000, 9999999999).".".$file->getClientOriginalExtension();
        $filename = $extension;
        $file->move('public/uploads/'.$filePath.'/', $filename);
        $imageUrl =  'public/uploads/'.$filePath.'/'.$filename;


    return $imageUrl;
    //$imageUrl = $this->imageUpload($request);

    }


    public static  function pdfUpload($request,$file,$filePath){


        $path = public_path('uploads/'.$filePath);

        if(!File::isDirectory($path)){
            File::makeDirectory($path, 0777, true, true);
        }


        $extension = date('Y-d-m').time().mt_rand(1000000000, 9999999999).".".$file->getClientOriginalExtension();
        $filename = $extension;
        $file->move('public/uploads/'.$filePath.'/', $filename);
        $imageUrl =  'uploads/'.$filePath.'/'.$filename;


    return $imageUrl;
    //$imageUrl = $this->imageUpload($request);

    }


    public static function englishToBangla($data){


        $engDATE = array('1','2','3','4','5','6','7','8','9','0','January','February','March','April',
        'May','June','July','August','September','October','November','December','Saturday','Sunday',
        'Monday','Tuesday','Wednesday','Thursday','Friday');



        $bangDATE = array('১','২','৩','৪','৫','৬','৭','৮','৯','০','জানুয়ারী','ফেব্রুয়ারী','মার্চ','এপ্রিল','মে',
        'জুন','জুলাই','আগস্ট','সেপ্টেম্বর','অক্টোবর','নভেম্বর','ডিসেম্বর','শনিবার','রবিবার','সোমবার','মঙ্গলবার','
        বুধবার','বৃহস্পতিবার','শুক্রবার'
        );


        $finalResult = str_replace($engDATE,$bangDATE,$data);

        return $finalResult;
    }

    public static function  generateRandomString($length = 10) {

        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[random_int(0, $charactersLength - 1)];
        }
        return $randomString;
    }

    public static function  generateRandomInteger($length = 6) {

        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[random_int(0, $charactersLength - 1)];
        }
        return $randomString;
    }


}
