<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
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
            $table->bigInteger('cate_id')->unsigned();
            $table->string('name')->unique();
            $table->string('desc');
            $table->double('price', 11, 2);
            $table->double('promotion_price',11,2)->default(0);
            $table->string('image');
            $table->text('content');
            $table->string('slug');
            $table->integer('quantity')->default(0);
            $table->integer('status')->default(0);
            $table->timestamps();
            $table->foreign('cate_id')->references('id')->on('categories')->onDelete('cascade');
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
}
