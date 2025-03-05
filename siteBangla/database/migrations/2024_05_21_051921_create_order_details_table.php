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
        Schema::create('order_details', function (Blueprint $table) {
            $table->id();
            $table->string('order_id');
            $table->string('product_id')->nullable();
            $table->string('product_name');
            $table->text('product_image')->nullable();
            $table->string('product_quantity')->nullable();
            $table->string('prodcut_price')->nullable();
            $table->string('addOnPrice')->nullable();
            $table->string('variationPrice')->nullable();
            $table->text('addOnLabelList')->nullable();
            $table->text('varationLabelList')->nullable();
            $table->text('variationPriceList')->nullable();
            $table->string('status')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('order_details');
    }
};
