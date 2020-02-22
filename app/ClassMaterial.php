<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ClassMaterial extends Model
{
    protected $guarded = [];

    public function teachingMaterial(){
        return $this->belongsTo(TeachingMaterial::class, 'material_id');
    }
}
