<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */

    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('email')->unique();
            $table->string('mobile')->unique()->nullable();
            $table->tinyInteger('gender');
            $table->date('birthday');
            $table->tinyInteger('country');
            $table->tinyInteger('state');
            $table->tinyInteger('city');
            $table->char('contact', 25);
            $table->char('image', 75)->nullable();
            $table->char('wechat', 25)->nullable();
            $table->char('qq', 25)->nullable();
            $table->char('skype', 25)->nullable();
            $table->char('facebook', 75)->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('username');
            $table->string('password');
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
