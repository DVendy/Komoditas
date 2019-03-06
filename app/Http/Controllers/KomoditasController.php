<?php

namespace App\Http\Controllers;

use App\Komoditas;
use App\Lahan;

use Illuminate\Http\Request;
use Validator;

class KomoditasController extends Controller
{
    public function index()
    {
        return view('komoditas.index');
    }
	
    public function create()
    {
        return view('komoditas.create');
    }
	
    public function doCreate(Request $request)
    {
		// dd($request->all());
		$validator = Validator::make($request->all(), [
			'name' => 'required',
			'type' => 'required|in:tanaman,ternak',
		]);

        if ($validator->fails())
            return redirect()->action('KomoditasController@create')->withErrors($validator)->withInput();

        $data = new Komoditas;
        $data->name = $request->input('name');
        $data->type = $request->input('type');
        $data->save();
		
        return redirect()->action('KomoditasController@index')->withMessages('Data komoditas telah berhasil disimpan');
	}
	
    public function delete($id)
    {
		$data = Komoditas::find($id);
		$data->delete();
		return redirect()->action('KomoditasController@index');
    }
}