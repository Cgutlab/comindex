<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('productos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code');
            $table->string('name');
            $table->string('image')->default('no-image.jpg')->nullable();
            $table->text('description')->nullable();
            $table->string('important')->default(0);
            $table->string('pdf')->nullable();
            $table->string('route')->nullable();
            $table->unsignedInteger('brand_id');
            $table->unsignedInteger('subfamily_id');
            $table->string('order');
            $table->foreign('brand_id')->references('id')->on('marcas');
            $table->foreign('subfamily_id')->references('id')->on('subfamilias')->onDelete('cascade');
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
        Schema::dropIfExists('productos');
    }
}
