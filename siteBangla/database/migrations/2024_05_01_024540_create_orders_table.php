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
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->string('invoice_id');
            $table->string('subtotal');
            $table->string('addon')->nullable();
            $table->string('discount')->nullable();
            $table->string('extra_discount')->nullable();
            $table->string('vat')->nullable();
            $table->string('delivery_charge')->nullable();
            $table->string('grand_total')->nullable();
            $table->string('status')->nullable();
            $table->string('order_type')->nullable();
            $table->string('customer_id')->nullable();
            $table->string('branch')->nullable();
            $table->string('waiter_id')->nullable();
            $table->string('admin_id')->nullable();
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
