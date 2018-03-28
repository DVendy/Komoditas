<?php

namespace App\Http\Controllers;

use Auth;
use App\User;
use App\Provinsi;
use App\Kabupaten;
use App\Kecamatan;
use App\Desa;
use Illuminate\Http\Request;
use Validator;

class LocationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
		return view('location.index');
	}
	
    public function create($type){
		return view('location.'.$type);
	}
	
    public function doCreateProvinsi(Request $request)
    {
		$messages = [
			'required' => 'Kolom :attribute perlu diisi.',
		];
		
		$validator = Validator::make($request->all(), [
			'nama' => 'required',
		], $messages);

        if ($validator->fails())
            return redirect()->action('LocationController@create', 'provinsi')->withErrors($validator)->withInput();
		
		$data = new Provinsi;
		$data->name = $request->nama;
		$data->save();
		
		return redirect()->action('LocationController@index')->withCreate('Provinsi');
	}
	
    public function doCreateKabupaten(Request $request)
    {
		$messages = [
			'required' => 'Kolom :attribute perlu diisi.',
		];
		
		$validator = Validator::make($request->all(), [
			'nama' => 'required',
			'provinsi_id' => 'required',
		], $messages);

        if ($validator->fails())
            return redirect()->action('LocationController@create', 'kabupaten')->withErrors($validator)->withInput();
		
		$data = new Kabupaten;
		$data->name = $request->nama;
		$data->provinsi_id = $request->provinsi_id;
		$data->save();
		
		return redirect()->action('LocationController@index')->withCreate('Kabupaten');
	}
	
    public function doCreateKecamatan(Request $request)
    {
		$messages = [
			'required' => 'Kolom :attribute perlu diisi.',
		];
		
		$validator = Validator::make($request->all(), [
			'nama' => 'required',
			'kabupaten_id' => 'required',
		], $messages);

        if ($validator->fails())
            return redirect()->action('LocationController@create', 'kecamatan')->withErrors($validator)->withInput();
		
		$data = new Kecamatan;
		$data->name = $request->nama;
		$data->kabupaten_id = $request->kabupaten_id;
		$data->save();
		
		return redirect()->action('LocationController@index')->withCreate('Kecamatan');
	}
	
    public function doCreateDesa(Request $request)
    {
		$messages = [
			'required' => 'Kolom :attribute perlu diisi.',
		];
		
		$validator = Validator::make($request->all(), [
			'nama' => 'required',
			'kecamatan_id' => 'required',
		], $messages);

        if ($validator->fails())
            return redirect()->action('LocationController@create', 'desa')->withErrors($validator)->withInput();
		
		$data = new Desa;
		$data->name = $request->nama;
		$data->kecamatan_id = $request->kecamatan_id;
		$data->save();
		
		return redirect()->action('LocationController@index')->withCreate('Desa');
	}
}