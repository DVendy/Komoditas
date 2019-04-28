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
		// dd(str_replace([' ', '-', '+'], '', $request->input('phone')));
		if($request->role == 'kordes'){
			$validator = Validator::make($request->all(), [
				'name' => 'required',
				'role' => 'required|in:kordes,admin,superadmin',
				'phone' => 'required|unique:users',
				'desa_id' => 'required',
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
        $admin->phone = str_replace([' ', '-', '+'], '', $request->input('phone'));
        $admin->role = $request->input('role');
        $admin->password = Hash::make($request->input('password'));
		
		if($admin->role == 'kordes')
			$admin->email = $admin->phone;
		else
			$admin->email = $request->input('email');
		
        $admin->save();

		//ROLE
		if($admin->role == 'kordes'){
			$desa = Desa::find($request->desa_id);
			$desa->pengurus_id = $admin->id;
			$desa->save();
		}
		
        return redirect()->action('AdminController@index')->withMessages('Data admin telah berhasil disimpan');
    }
    public function doEdit(Request $request, $id)
    {
		// dd(str_replace([' ', '-', '+'], '', $request->input('phone')));
		if($request->role == 'kordes'){
			$validator = Validator::make($request->all(), [
				'name' => 'required',
				'role' => 'required|in:kordes,admin,superadmin',
				'phone' => 'required',Rule::unique('users')->ignore($id),
				'desa_id' => 'required',
				// 'password' => 'required|confirmed',
			]);
		}else{
			$validator = Validator::make($request->all(), [
				'name' => 'required',
				'role' => 'required|in:kordes,admin,superadmin',
				'email' => 'required',Rule::unique('users')->ignore($id),
				// 'password' => 'required|confirmed',
			]);
		}

        if ($validator->fails())
            return redirect()->action('AdminController@edit', $id)->withErrors($validator)->withInput();

        $admin = User::find($id);
        $admin->name = $request->input('name');
        $admin->phone = str_replace([' ', '-', '+'], '', $request->input('phone'));
        $admin->role = $request->input('role');
		if($request->input('password'))
			$admin->password = Hash::make($request->input('password'));
		
		if($admin->role == 'kordes')
			$admin->email = $admin->phone;
		else
			$admin->email = $request->input('email');
		
        $admin->save();

		//ROLE
		if($admin->role == 'kordes'){
			$desa = Desa::where('pengurus_id', $admin->id)->first();
			if($desa){
				$desa->pengurus_id = null;
				$desa->save();
			}
			$desa = Desa::find($request->desa_id);
			$desa->pengurus_id = $admin->id;
			$desa->save();
		}
		
        return redirect()->action('AdminController@index')
			->withMessage(['title' => 'Sukses!', 'color' => 'success', 'body' => 'Data admin telah berhasil disimpan!']);
    }
	
    public function edit($id)
    {
		$admin = User::find($id);
		// dd($admin);
		
        return view('admin.edit')
			->withAdmin($admin);
    }
	
    public function delete($id)
    {
		$admin = User::find($id);
		$admin->delete();
		return redirect()->action('AdminController@index');
    }
}