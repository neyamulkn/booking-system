<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TeachingMaterial extends Model
{
    protected $guarded = [];

    public function classMaterial(){
    	return $this->hasOne(ClassMaterial::class, 'material_id');
    }
}
