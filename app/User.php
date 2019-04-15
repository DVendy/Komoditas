<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
	
	// PENGURUS
	public function p_desa(){
		return $this->hasOne('App\Desa', 'pengurus_id');
	}
	
	public function p_kecamatan(){
		return $this->hasOne('App\Kecamatan', 'pengurus_id');
	}
	
	public function p_kabupaten(){
		return $this->hasOne('App\Kabupaten', 'pengurus_id');
	}
	
	public function p_provinsi(){
		return $this->hasOne('App\Provinsi', 'pengurus_id');
	}
	
	public function lahans(){
		$lahans = new Lahan;
		switch($this->role){
			case 'kordes' :
				$lahans = $lahans->where('desa_id', $this->p_desa->id);
			break;
		}
		
		return $lahans->get();
	}
	
	public function komo_lahans($type){
		$komo_lahans = new KomoditasLahan;
		switch($this->role){
			case 'kordes' :
				$komo_lahans = $komo_lahans->whereIn('lahan_id', $this->lahans()->pluck('id'));
			break;
		}
		if($type)
			$komo_lahans = $komo_lahans->where('type', $type);
		
		return $komo_lahans->with(['komoditas', 'lahan'])->get();
	}
}
