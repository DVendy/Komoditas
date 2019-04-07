<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HistoryKomoditasLahan extends Model
{
    protected $table = 'history_komoditas_lahan';
	
	public function komoditasLahan(){
		return $this->belongsTo('App\KomoditasLahan');
	}
	
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
