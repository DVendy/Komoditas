<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Provinsi extends Model
{
    protected $table = 'provinsi';
	
	public function pengurus(){
		return $this->belongsTo('App\User');
	}
	
	public function kabupaten(){
		return $this->hasMany('App\Kabupaten');
	}
}
