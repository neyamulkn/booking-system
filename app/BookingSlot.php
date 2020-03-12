<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class BookingSlot extends Model
{
    protected $guarded = [];

    public function user(){
    	return $this->belongsTo(User::class, ( Auth::user()->user_roleID != env('TEACHER') ) ? 'teacher_id' : 'student_id' );
    }

    public function bookingSlot(){
        return $this->belongsTo(TimeAvailable::class, 'slote_id');
    }
    public function ClassMaterials(){
    	return $this->hasMany(ClassMaterial::class, 'slote_id', 'id');
    }
}
