<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TimeAvailable extends Model
{
    protected $guarded = [];

    public function teacher(){
    	return $this->belongsTo(User::class, 'teacher_id');
    }
    public function bookingSlot(){
       return $this->hasOne(BookingSlot::class, 'slote_id');
    }
    public function ClassMaterials(){
    	return $this->hasMany(ClassMaterial::class, 'slote_id');
    }
}
