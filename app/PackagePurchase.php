<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Auth;
class PackagePurchase extends Model
{
    protected $guarded = [];

    public function user(){
    	return $this->belongsTo(User::class, (Auth::user()->user_roleID == env('TEACHER') ? 'studentId' :  'teacherId') );
    }
}
