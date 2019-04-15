<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Hash;
use Validator;
use Auth;
use DateTime;
use DateInterval;
use DatePeriod;
use DB;
use Excel;
use App\User;
use App\Desa;
use App\Kecamatan;
use App\Komoditas;
use App\Exports\BulanKecamatan;

class ReportController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('report.index');
    }
	
	public function lahanKecamatan(Request $request){
		// dd($request->all());
		$validator = Validator::make($request->all(), [
			'kecamatan_id' => 'required',
			'year' => 'required',
			'month' => 'required',
		]);

        if ($validator->fails())
            return redirect()->back()
			->withMessage(['title' => 'Error!', 'color' => 'danger', 'body' => 'Periksa kembali inputan!']);
		
		$kecamatan_id = $request->input('kecamatan_id');
		$year = $request->input('year');
		$month = $request->input('month');
		$date_from = $year.'-'.$month.'-01 00:00:00.000000';
		$date_to = $year.'-'.$month.'-'.date('t', strtotime($date_from)).' 23:59:59.999999';
		$desas = Desa::where('kecamatan_id', $request->input('kecamatan_id'))->orderBy('name')->get()->pluck('name')->toArray();
		$komoditases = Komoditas::orderBy('type', 'desc')->get()->pluck('name')->toArray();
		$kecamatan_name = Kecamatan::find($kecamatan_id)->name;
		
		$hasil = [];
		$query = \DB::select("SELECT desa.name as desa_name, komoditas.name as komoditas_name, komoditas.id as komoditas_id, SUM(b_estimasi_hasil_panen) as 'hasil_panen', DATE_FORMAT(b_tanggal_panen, '%Y-%m-%d') as 'tanggal_panen' FROM komoditas_lahan as kl LEFT JOIN lahan ON kl.lahan_id = lahan.id LEFT JOIN desa ON lahan.desa_id = desa.id LEFT JOIN kecamatan ON desa.kecamatan_id = kecamatan.id LEFT JOIN komoditas ON kl.komoditas_id = komoditas.id WHERE (b_tanggal_panen BETWEEN '".$date_from."' AND '".$date_to."') AND kecamatan.id = ".$kecamatan_id." GROUP BY desa_name, komoditas_name, komoditas_id, tanggal_panen");
		foreach($query as $val){
			$hasil[$val->komoditas_name][$val->desa_name][$val->tanggal_panen] = $val->hasil_panen;
		}
		$query = \DB::select("SELECT desa.name as desa_name, komoditas.name as komoditas_name, komoditas.id as komoditas_id, SUM(t_estimasi_hasil_panen) as 'hasil_panen', DATE_FORMAT(t_tanggal_panen, '%Y-%m-%d') as 'tanggal_panen' FROM komoditas_lahan as kl LEFT JOIN lahan ON kl.lahan_id = lahan.id LEFT JOIN desa ON lahan.desa_id = desa.id LEFT JOIN kecamatan ON desa.kecamatan_id = kecamatan.id LEFT JOIN komoditas ON kl.komoditas_id = komoditas.id WHERE (t_tanggal_panen BETWEEN '".$date_from."' AND '".$date_to."') AND kecamatan.id = ".$kecamatan_id." GROUP BY desa_name, komoditas_name, komoditas_id, tanggal_panen");
		foreach($query as $val){
			$hasil[$val->komoditas_name][$val->desa_name][$val->tanggal_panen] = $val->hasil_panen;
		}
		$query = \DB::select("SELECT desa.name as desa_name, komoditas.name as komoditas_name, komoditas.id as komoditas_id, SUM(i_estimasi_hasil_panen) as 'hasil_panen', DATE_FORMAT(i_tanggal_panen, '%Y-%m-%d') as 'tanggal_panen' FROM komoditas_lahan as kl LEFT JOIN lahan ON kl.lahan_id = lahan.id LEFT JOIN desa ON lahan.desa_id = desa.id LEFT JOIN kecamatan ON desa.kecamatan_id = kecamatan.id LEFT JOIN komoditas ON kl.komoditas_id = komoditas.id WHERE (i_tanggal_panen BETWEEN '".$date_from."' AND '".$date_to."') AND kecamatan.id = ".$kecamatan_id." GROUP BY desa_name, komoditas_name, komoditas_id, tanggal_panen");
		foreach($query as $val){
			$hasil[$val->komoditas_name][$val->desa_name][$val->tanggal_panen] = $val->hasil_panen;
		}
		
		
		// dd(isset($hasil['AYAM PEDAGING']['Floyd Bridge']['12 June']) ? $hasil['AYAM PEDAGING']['Floyd Bridge']['12 June'] : '0');
		$start = new DateTime($date_from);
		$interval = new DateInterval('P1D');
		$end = new DateTime($date_to);
		$period = new DatePeriod($start, $interval, $end);
		
		$data = [
			'hasil' => $hasil,
			'desas' => $desas,
			'komoditases' => $komoditases,
			'period' => $period,
			'kecamatan_name' => $kecamatan_name,
			'periode' => date('F Y', strtotime($date_from)),
		];
		// dd($data);
		
        // return view('report.lahan-kecamatan', [
			// 'data' => $data,
			// 'index' => 'PADI'
        // ]);
		
		return Excel::download(new BulanKecamatan($data), 'oase_'.$kecamatan_name.'_'.date('Y_F', strtotime($date_from)).'.xlsx');
	}
}