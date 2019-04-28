<?php

namespace App\Http\Controllers;

use Auth;
use DB;
use Hash;
use Eloquent;
use App\User;
use App\Provinsi;
use App\Kabupaten;
use App\Kecamatan;
use App\Desa;
use App\Fase;
use App\Komoditas;
use App\KomoditasLahan;
use App\HistoryKomoditasLahan;
use App\Lahan;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
		if(Auth::user()->role == 'kordes')
			return view('dashboard.kordes');
		
		return view('dashboard.admin');
	}
	
    public function godMode(){
		if(Auth::user()->role != 'superadmin')
			return redirect('/');
		
		return view('dashboard.godmode');
	}
	
    public function clearData(){
		Auth::logout();
		Eloquent::unguard();

        //disable foreign key check for this connection before running seeders
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
		
		Desa::truncate();
		Fase::truncate();
		HistoryKomoditasLahan::truncate();
		Kabupaten::truncate();
		Kecamatan::truncate();
		Komoditas::truncate();
		KomoditasLahan::truncate();
		Lahan::truncate();
		Provinsi::truncate();
		User::truncate();
		
		DB::statement('SET FOREIGN_KEY_CHECKS=1;');
		
		//SUPERADMIN	
		$user = new User;
		$user->name = 'Super Admin';
		$user->email = 'superadmin@komoditas.id';
		$user->phone = '12345';
		$user->password = Hash::make('fabelyta');
		$user->role = 'superadmin';
		$user->save();
		
		Auth::login($user, true);
		
		$data = array(
			array(
				'name'=>'SAPI POTONG', 'type'=>'ternak',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'KAMBING POTONG', 'type'=>'ternak',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'SAPI PERAH', 'type'=>'ternak',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'AYAM PEDAGING', 'type'=>'ternak',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'JAGUNG HIBRIDA', 'type'=>'tanaman',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'JAGUNG MANIS', 'type'=>'tanaman',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'CABE RAWIT', 'type'=>'tanaman',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'PADI', 'type'=>'tanaman',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'IKAN LELE', 'type'=>'ikan',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'IKAN NILA', 'type'=>'ikan',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'BELUT', 'type'=>'ikan',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
			array(
				'name'=>'IKAN ……', 'type'=>'ikan',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
			   ),
		);

		Komoditas::insert($data);
		
		return redirect('/');
	}
}