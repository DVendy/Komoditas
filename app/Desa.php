<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Desa extends Model
{
    protected $table = 'desa';
	
	public function pengurus(){
		return $this->belongsTo('App\User');
	}
	
	public function kecamatan(){
		return $this->belongsTo('App\Kecamatan');
	}
	
	public function lahan(){
		return $this->hasMany('App\Lahan');
	}
}
