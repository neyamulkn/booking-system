<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePackagePurchasesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('package_purchases', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->char('trnx_id', 25);
            $table->integer('studentId');
            $table->integer('teacherId');
            $table->integer('packageId');
            $table->integer('total_class')->nullable();
            $table->integer('remaining_class')->nullable();
            $table->integer('amount');
            $table->integer('expiry_day')->nullable();
            $table->char('paymentMethod');
            $table->char('paymentTrnx_id', 125);
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
        Schema::dropIfExists('package_purchases');
    }
}
