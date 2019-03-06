<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class KomoditasLahan extends Model
{
    protected $table = 'komoditas_lahan';
	
	public function komoditas(){
		return $this->belongsTo('App\Komoditas');
	}
	
	public function lahan(){
		return $this->belongsTo('App\Lahan');
	}
	
	public function fase(){
		return $this->belongsTo('App\Fase');
	}
}
