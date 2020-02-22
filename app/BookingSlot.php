<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BookingSlot extends Model
{
    protected $guarded = [];

    public function user(){
    	return $this->belongsTo(User::class, 'student_id');
    }
    public function bookingSlot(){
        return $this->belongsTo(TimeAvailable::class, 'slote_id');
    }
    public function ClassMaterials(){
    	return $this->hasMany(ClassMaterial::class, 'slote_id', 'slote_id');
    }
}
