<?php

namespace App\Http\Controllers;

use App\User;
use App\Lahan;
use App\Komoditas;
use App\KomoditasLahan;

use Illuminate\Http\Request;
use Validator;

class LahanController extends Controller
{
    public function index()
    {
        return view('lahan.index');
    }
	
    public function indexTanaman()
    {
        return view('lahan.index-tanaman');
    }
	
    public function indexTernak()
    {
        return view('lahan.index-ternak');
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
		$auth= \Auth::user();
		
		// dd($request->all());
		$messages = [
			'required' => 'Kolom :attribute perlu diisi.',
		];
		
		$validator = Validator::make($request->all(), [
			'nama' => 'required',
			'desa_id' => 'required',
			'lat' => 'required',
			'long' => 'required',
			'luas' => 'required',
			'pemilik' => 'required',
		], $messages);

        if ($validator->fails())
            return redirect()->action('LahanController@create')->withErrors($validator)->withInput();
		
		$data = new Lahan;
		$data->pengurus_id = $auth->id;
		$data->desa_id = $request->desa_id;
		$data->name = $request->nama;
		$data->lat = $request->lat;
		$data->long = $request->long;
		$data->luas = $request->luas;
		$data->pemilik = $request->pemilik;
		$data->save();
		
		return redirect()->action('LahanController@addKomoditas', $data->id);
	}
	
    public function addKomoditas($id)
    {
		$lahan = Lahan::find($id);
        return view('lahan.addkomoditas')->with('lahan', $lahan);
    }
	
    public function doAddKomoditas(Request $request, $id)
    {
		// dd($request->all());
		$messages = [
			'required' => 'Komoditas perlu diisi.',
		];
		
		$validator = Validator::make($request->all(), [
			'komoditas_id' => 'required',
		], $messages);

        if ($validator->fails())
            return redirect()->action('LahanController@addKomoditas', $id)->withErrors($validator)->withInput();
		
		$komoditas = Komoditas::find($request->komoditas_id);
		
		$messages = [
			'required' => 'Kolom :attribute perlu diisi.',
		];
		if($komoditas->type == 'tanaman'){
			$validator = Validator::make($request->all(), [
				'komoditas_id' => 'required',
				'luas' => 'required',
				'fase_id' => 'required',
			], $messages);
		}else{
			$validator = Validator::make($request->all(), [
				'komoditas_id' => 'required',
				'jumlah' => 'required',
			], $messages);
		}

        if ($validator->fails())
            return redirect()->action('LahanController@addKomoditas', $id)->withErrors($validator)->withInput();
		
		$data = new KomoditasLahan;
		$data->komoditas_id = $request->komoditas_id;
		$data->lahan_id = $id;
		
		if($komoditas->type == 'tanaman'){
			$data->fase_id = $request->fase_id;
			$data->luas = $request->luas;
		}
		
		if($komoditas->type == 'ternak'){
			$data->jumlah = $request->jumlah;
		}
		
		$data->save();
		
		return redirect()->action('LahanController@index')->withCreate('Lahan');
	}
	
    public function delete($id)
    {
		$lahan = Lahan::find($id);
		$lahan->delete();
		return redirect()->action('LahanController@index');
    }
	
    public function deleteKomoditas($id)
    {
		$komoditasLahan = KomoditasLahan::find($id);
		$komoditasLahan->delete();
		return redirect()->action('LahanController@index');
    }
}
