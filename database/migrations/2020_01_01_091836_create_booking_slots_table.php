<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBookingSlotsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('booking_slots', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('slote_id');
            $table->integer('slote_date');
            $table->integer('teacher_id');
            $table->integer('student_id')->comment('booking student id');
            $table->date('booking_date');
            $table->text('cancel_reason')->nullable();
            $table->integer('cancel_by')->nullable();
            $table->tinyInteger('booking_status')->default(1)->comment('booked=1, finish=2, cancel=3');
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
        Schema::dropIfExists('booking_slots');
    }
}
