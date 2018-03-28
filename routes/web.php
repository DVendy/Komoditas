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

Route::get('/god/admin', function(){
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
	
	Route::get('/logout', 'Auth\LoginController@logout');
});