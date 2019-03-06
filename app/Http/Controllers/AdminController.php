<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Hash;
use Validator;
use Auth;
use DB;
use App\User;
use App\Desa;

class AdminController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.index');
    }
	
    public function create()
    {
        return view('admin.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function doCreate(Request $request)
    {
		// dd($request->all());
		if($request->role == 'desa'){
			$validator = Validator::make($request->all(), [
				'name' => 'required',
				'role' => 'required|in:desa,admin,superadmin',
				'phone' => 'required|unique:users',
				// 'desa_id' => 'required',
				'password' => 'required|confirmed',
			]);
		}else{
			$validator = Validator::make($request->all(), [
				'name' => 'required',
				'role' => 'required|in:desa,admin,superadmin',
				'email' => 'required|unique:users',
				'password' => 'required|confirmed',
			]);
		}

        if ($validator->fails())
            return redirect()->action('AdminController@create')->withErrors($validator)->withInput();

        $admin = new User;
        $admin->name = $request->input('name');
        $admin->phone = $request->input('phone');
        $admin->role = $request->input('role');
        $admin->password = Hash::make($request->input('password'));
		
		if($admin->role == 'desa')
			$admin->email = $admin->phone;
		else
			$admin->email = $request->input('email');
		
        $admin->save();

		//ROLE
		// if($admin->role == 'desa'){
		if(false){
			$desa = Desa::find($request->desa_id);
			$desa->user_id = $admin->id;
			$desa->save();
		}
		
        return redirect()->action('AdminController@index')->withMessages('Data admin telah berhasil disimpan');
    }
	
    public function edit($id)
    {
		$admin = User::find($id);
		// dd($admin);
		
        return view('admin.create');
    }
	
    public function delete($id)
    {
		$admin = User::find($id);
		$admin->delete();
		return redirect()->action('AdminController@index');
    }
}