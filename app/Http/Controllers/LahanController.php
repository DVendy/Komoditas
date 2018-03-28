<?php

namespace App\Http\Controllers;

use App\User;
use App\Lahan;

use Illuminate\Http\Request;
use Validator;

class LahanController extends Controller
{
    public function index()
    {
        return view('lahan.index');
    }
	
    public function indexAdmin()
    {
        return view('lahan.admin-index');
    }
	
    public function create()
    {
        return view('lahan.create');
    }
	
    public function doCreate(Request $request)
    {
		$messages = [
			'required' => 'Kolom :attribute perlu diisi.',
		];
		
		$validator = Validator::make($request->all(), [
			'nama' => 'required',
			'desa_id' => 'required',
			'fase_id' => 'required',
			'lat' => 'required',
			'long' => 'required',
			'luas' => 'required',
			'pemilik' => 'required',
		], $messages);

        if ($validator->fails())
            return redirect()->action('LahanController@create')->withErrors($validator)->withInput();
		
		$data = new Lahan;
		$data->name = $request->nama;
		$data->desa_id = $request->desa_id;
		$data->fase_id = $request->fase_id;
		$data->lat = $request->lat;
		$data->long = $request->long;
		$data->luas = $request->luas;
		$data->pemilik = $request->pemilik;
		$data->save();
		
		return redirect()->action('LahanController@index')->withCreate('Lahan');
	}
}
