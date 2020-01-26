<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTimeAvailablesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('time_availables', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->tinyInteger('teacher_id');
            $table->date('slotDate');
            $table->char('slotTime', 25);
            $table->tinyInteger('booking_id')->default(0)->comment('booking student id');
            $table->tinyInteger('status')->default(0);
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
        Schema::dropIfExists('time_availables');
    }
}