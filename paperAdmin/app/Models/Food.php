<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Food extends Model
{
    use HasFactory;

    protected $table = "food";

    protected $fillable = ['image','category_id','product_name','product_slug','note','description','vat','vat_amount','price','add_on','status'];

}
