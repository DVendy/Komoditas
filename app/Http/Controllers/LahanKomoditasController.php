<?php

namespace App\Http\Controllers;

use App\User;
use App\Lahan;
use App\Komoditas;
use App\KomoditasLahan;

use Illuminate\Http\Request;
use Validator;

class LahanKomoditasController extends Controller
{
	
    public function index($type)
    {
	// dd(\Request::path());
        return view('lahan.lahan-komo')
			->with('type', $type);
    }
	
    public function detail($type, $lk_id)
    {
		$lahanKomoditas = KomoditasLahan::find($lk_id);
        return view('lahan.lahan-komo-detail')
			->with('type', $type)
			->with('data', $lahanKomoditas);
    }
}