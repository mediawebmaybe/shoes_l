<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name')->default('');
            $table->integer('code')->default(0)->unique();
            $table->integer('price')->default('0');
            $table->integer('category_id')->default('0');
            $table->string('brand')->default('');
            $table->string('color')->default('');
            $table->string('material')->default('');
            $table->string('country')->default('');
            $table->integer('size')->default('0');
            $table->string('description')->default('');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
};
