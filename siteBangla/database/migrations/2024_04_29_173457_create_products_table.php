<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('product_name');
            $table->string('product_slug');
            $table->text('product_short_description');
            $table->text('product_image');
            $table->string('category_id');
            $table->string('sub_category_id')->nullable();
            $table->string('item_type');
            $table->string('product_type');
            $table->string('main_type');
            $table->string('available_status');
            $table->string('available_time');
            $table->string('approximate_time');
            $table->string('available_till');
            $table->string('default_price');
            $table->string('discount_type');
            $table->string('discount_price');
            $table->string('tax_type');
            $table->string('tax_rate');
            $table->longText('variations')->nullable();
            $table->text('product_add_on')->nullable();
            $table->string('product_stock_type');
            $table->string('product_stock_quantity');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
