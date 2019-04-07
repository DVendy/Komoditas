<?php

namespace App\Http\Controllers;

use Auth;
use DB;
use App\User;
use App\Absen;
use App\Spg;
use App\Location;
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
}