<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lahan extends Model
{
    protected $table = 'lahan';
	
	public function desa(){
		return $this->belongsTo('App\Desa');
	}
	
	public function fase(){
		return $this->belongsTo('App\Fase');
	}
	
	public function komoditasLahans(){
		return $this->hasMany('App\KomoditasLahan');
	}
}
