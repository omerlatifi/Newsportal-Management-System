<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InventoryName extends Model
{
    use HasFactory;

    protected $table = "inventory_names";

    protected $fillable = ['name'];
}
