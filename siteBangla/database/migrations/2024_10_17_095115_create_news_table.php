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
        Schema::create('news', function (Blueprint $table) {
            $table->id();
            $table->string('title')->nullable();
            $table->string('subtitle')->nullable();
            $table->longText('des')->nullable();
            $table->string('image')->nullable();
            $table->string('image_caption')->nullable();
            $table->string('headline_type')->nullable();
            $table->string('home_page_position')->nullable();
            $table->string('category')->nullable();
            $table->string('sub_category')->nullable();
            $table->string('publish_site')->nullable();
            $table->string('status')->nullable();
            $table->string('create_date')->nullable();
            $table->string('create_time')->nullable();
            $table->string('trash_status')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('news');
    }
};
