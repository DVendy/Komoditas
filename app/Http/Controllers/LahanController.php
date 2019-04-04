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
			// 'desa_id' => 'required',
			// 'lat' => 'required',
			// 'long' => 'required',
			'luas' => 'required',
			'pemilik' => 'required',
		], $messages);

        if ($validator->fails())
            return redirect()->action('LahanController@create')->withErrors($validator)->withInput();
		
		$data = new Lahan;
		// $data->pengurus_id = $auth->id;
		$data->desa_id = $auth->p_desa->id;
		$data->name = $request->nama;
		// $data->lat = $request->lat;
		// $data->long = $request->long;
		$data->lat = '';
		$data->long = '';
		$data->luas = $request->luas;
		$data->pemilik = $request->pemilik;
		$data->save();
		
		return redirect()->action('LahanController@addKomoditas', $data->id);
	}
	
    public function detail($id)
    {
		$lahan = Lahan::find($id);
        return view('lahan.detail')
			->with('lahan', $lahan);
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
		
		$data = new KomoditasLahan;
		$data->komoditas_id = $request->komoditas_id;
		$data->lahan_id = $id;
		
		if($komoditas->type == 'ternak'){
			$data->type = 'ternak';
			$data->b_luas_kandang = $request->b_luas_kandang;
			$data->b_tahap_persiapan = $request->b_tahap_persiapan;
			$data->b_tahap_pemeliharaan = $request->b_tahap_pemeliharaan;
			$data->b_tahap_panen = $request->b_tahap_panen;
			if($request->b_tanggal_masuk_ternak)
				$data->b_tanggal_masuk_ternak = $request->b_tanggal_masuk_ternak . ' 00:00:00';
			else
				$data->b_tanggal_masuk_ternak = $request->b_tanggal_masuk_ternak;
			$data->b_jumlah_ternak = $request->b_jumlah_ternak;
			if($request->b_tanggal_panen)
				$data->b_tanggal_panen = $request->b_tanggal_panen . ' 00:00:00';
			else
				$data->b_tanggal_panen = $request->b_tanggal_panen;
			$data->b_estimasi_hasil_panen = $request->b_estimasi_hasil_panen;
		}
		
		if($komoditas->type == 'tanaman'){
			$data->type = 'tanaman';
			$data->t_luas_lahan = $request->t_luas_lahan;
			$data->t_tahap_persiapan = $request->t_tahap_persiapan;
			$data->t_tahap_pemeliharaan = $request->t_tahap_pemeliharaan;
			$data->t_tahap_panen = $request->t_tahap_panen;
			if($request->t_tanggal_mulai_tanam)
				$data->t_tanggal_mulai_tanam = $request->t_tanggal_mulai_tanam . ' 00:00:00';
			else
				$data->t_tanggal_mulai_tanam = $request->t_tanggal_mulai_tanam;
			$data->t_jumlah_tanaman = $request->t_jumlah_tanaman;
			if($request->t_tanggal_panen)
				$data->t_tanggal_panen = $request->t_tanggal_panen . ' 00:00:00';
			else
				$data->t_tanggal_panen = $request->t_tanggal_panen;
			$data->t_estimasi_hasil_panen = $request->t_estimasi_hasil_panen;
		}
		
		if($komoditas->type == 'ikan'){
			$data->type = 'ikan';
			$data->i_luas_kolam = $request->i_luas_kolam;
			$data->i_tahap_persiapan = $request->i_tahap_persiapan;
			$data->i_tahap_pemeliharaan = $request->i_tahap_pemeliharaan;
			$data->i_tahap_panen = $request->i_tahap_panen;
			if($request->i_tanggal_tebar_ikan)
				$data->i_tanggal_tebar_ikan = $request->i_tanggal_tebar_ikan . ' 00:00:00';
			else
				$data->i_tanggal_tebar_ikan = $request->i_tanggal_tebar_ikan;
			$data->i_jumlah_ikan = $request->i_jumlah_ikan;
			if($request->i_tanggal_panen)
				$data->i_tanggal_panen = $request->i_tanggal_panen . ' 00:00:00';
			else
				$data->i_tanggal_panen = $request->i_tanggal_panen;
			$data->i_estimasi_hasil_panen = $request->i_estimasi_hasil_panen;
		}
		
		$data->save();
		
		return redirect()->action('LahanController@detail', [$id, 'kl_id='.$data->id]);
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
