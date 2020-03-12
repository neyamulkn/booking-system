<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePackagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('packages', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('teacherId');
            $table->char('packageName');
            $table->integer('class_no')->nullable();
            $table->integer('validity_day ')->nullable();
            $table->integer('timeSlot')->nullable();
            $table->double('amount')->nullable();
            $table->double('type')->default(1)->comment('regular=1,custom=2');
            $table->tinyInteger('status')->default(1);
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
        Schema::dropIfExists('packages');
    }
}
