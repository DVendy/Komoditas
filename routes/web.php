<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use App\Imports\FirstImport;
use Maatwebsite\Excel\Facades\Excel;

Route::get('/import', function(){
	//die();
	Excel::import(new FirstImport, public_path('data/data_kordes.xls'));
	
	return 'done';
});

Route::get('/genesis', function(){
	//die();
	$user = App\User::where('email', 'superadmin@komoditas.id')->first();
	if(!$user)
		$user = new App\User;
	
	$user->name = 'Super Admin';
	$user->email = 'superadmin@komoditas.id';
	$user->phone = '123123';
	$user->password = Hash::make('123qwe');
	$user->role = 'superadmin';
	$user->save();
	
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

		App\Komoditas::insert($data);
});

Route::group(['middleware' => 'guest'], function () {
	Route::get('/login', 'Auth\LoginController@login');
	Route::post('/do-login', 'Auth\LoginController@doLogin');
});

Route::group(['middleware' => 'auth'], function () {
	Route::get('/', 'DashboardController@index');
	
	Route::group(['prefix' => 'admin'], function () {
		Route::get('/', 'AdminController@index');
		Route::get('/create', 'AdminController@create');
		Route::post('/do-create', 'AdminController@doCreate');
		Route::get('/edit/{id}', 'AdminController@edit');
		Route::post('/do-edit/{id}', 'AdminController@doEdit');
		Route::get('/delete/{id}', 'AdminController@delete');
	});
	
	Route::group(['prefix' => 'report'], function () {
		Route::get('/', 'ReportController@index');
		Route::get('/lahan-kecamatan', 'ReportController@lahanKecamatan');
	});
	
	Route::group(['prefix' => 'location'], function () {
		Route::get('/', 'LocationController@index');
		
		Route::get('/create/{type}', 'LocationController@create');
		Route::get('/edit/{type}/{id}', 'LocationController@edit');
		Route::get('/delete/{type}/{id}', 'LocationController@delete');
		
		Route::post('/do-create-desa', 'LocationController@doCreateDesa');
		Route::post('/do-create-kecamatan', 'LocationController@doCreateKecamatan');
		Route::post('/do-create-kabupaten', 'LocationController@doCreateKabupaten');
		Route::post('/do-create-provinsi', 'LocationController@doCreateProvinsi');
		
		Route::post('/do-edit-desa', 'LocationController@doEditDesa');
		Route::post('/do-edit-kecamatan', 'LocationController@doEditKecamatan');
		Route::post('/do-edit-kabupaten', 'LocationController@doEditKabupaten');
		Route::post('/do-edit-provinsi', 'LocationController@doEditProvinsi');
	});
	
	Route::group(['prefix' => 'komoditas'], function () {
		Route::get('/', 'KomoditasController@index');		
		Route::get('/create', 'KomoditasController@create');
		Route::post('/do-create', 'KomoditasController@doCreate');
		Route::get('/edit/{id}', 'KomoditasController@edit');
		Route::post('/do-edit/{id}', 'KomoditasController@doEdit');
		Route::get('/delete/{id}', 'KomoditasController@delete');
	});
	
	Route::group(['prefix' => 'lahan'], function () {
		Route::get('/', 'LahanController@index');
		Route::get('/detail/{id}', 'LahanController@detail');
		
		// LAHAN - KOMODITAS
		Route::group(['prefix' => 'komoditas'], function () {
			Route::group(['prefix' => '{type}'], function () {
				Route::get('/', 'LahanKomoditasController@index');
			});
			
			Route::get('/detail/{id}', 'LahanKomoditasController@detail');
			Route::post('/detail/{id}', 'LahanKomoditasController@doRekap');
		});
		
		Route::get('/tanaman', 'LahanController@indexTanaman');
		
		Route::get('/create', 'LahanController@create');
		Route::post('/do-create', 'LahanController@doCreate');
		Route::get('/edit/{id}', 'LahanController@edit');
		Route::post('/do-edit/{id}', 'LahanController@doEdit');
		Route::get('/delete/{id}', 'LahanController@delete');
		
		Route::group(['prefix' => 'admin'], function () {
			Route::get('/', 'LahanController@indexAdmin');
		});
		
		Route::group(['prefix' => '{id}'], function () {
			Route::get('/add-komoditas', 'LahanController@addKomoditas');
			Route::post('/add-komoditas', 'LahanController@doAddKomoditas');
		});
	});
	
	Route::group(['prefix' => 'god-mode'], function () {
		Route::get('/', 'DashboardController@godMode');
		Route::get('/clear-data', 'DashboardController@clearData');
		Route::get('/clear-data-1', 'DashboardController@clearData1');
	});
	
	Route::get('/logout', 'Auth\LoginController@logout');
});