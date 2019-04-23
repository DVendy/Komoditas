@php
	$auth = Auth::user();
	$uri = Request::path();
	// dd(strpos($uri, '/lahan/komoditas/ternak'));
@endphp

<ul class="sidebar-menu" data-widget="tree">
	@if($auth->role == 'kordes')
		<li class="header">MAIN MENU</li>
		<li @if($uri == '/') class="active" @endif><a href="{{ action('DashboardController@index') }}"><i class="fa fa-map"></i> <span>Dashboard</span></a></li>
		<li @if($uri == 'lahan') class="active" @endif><a href="{{ action('LahanController@index') }}"><i class="fa fa-map"></i> <span>Lahan</span></a></li>
		
		<li class="header">KOMODITAS</li>
		<li @if(strpos($uri, 'lahan/komoditas/ternak') !== false) class="active" @endif><a href="{{ action('LahanKomoditasController@index', 'ternak') }}"><i class="fa fa-map"></i> <span>Komoditas Ternak</span></a></li>
		<li @if(strpos($uri, 'lahan/komoditas/tanaman') !== false) class="active" @endif><a href="{{ action('LahanKomoditasController@index', 'tanaman') }}"><i class="fa fa-map"></i> <span>Komoditas Tanaman</span></a></li>
		<li @if(strpos($uri, 'lahan/komoditas/ikan') !== false) class="active" @endif><a href="{{ action('LahanKomoditasController@index', 'ikan') }}"><i class="fa fa-map"></i> <span>Komoditas Ikan</span></a></li>
	@endif
	
	@if(in_array($auth->role, ['admin', 'superadmin']))
		<li class="header">MAIN MENU</li>
		<li @if($uri == '/') class="active" @endif><a href="{{ action('DashboardController@index') }}"><i class="fa fa-map"></i> <span>Dashboard</span></a></li>
		<li @if(strpos($uri, 'report') !== false) class="active" @endif><a href="{{ action('ReportController@index') }}"><i class="fa fa-list-alt"></i> <span>Report</span></a></li>
		<li @if($uri == 'lahan') class="active" @endif><a href="{{ action('LahanController@index') }}"><i class="fa fa-map"></i> <span>Lahan</span></a></li>
		
		<li class="header">KOMODITAS</li>
		<li @if(strpos($uri, 'lahan/komoditas/ternak') !== false) class="active" @endif><a href="{{ action('LahanKomoditasController@index', 'ternak') }}"><i class="fa fa-map"></i> <span>Komoditas Ternak</span></a></li>
		<li @if(strpos($uri, 'lahan/komoditas/tanaman') !== false) class="active" @endif><a href="{{ action('LahanKomoditasController@index', 'tanaman') }}"><i class="fa fa-map"></i> <span>Komoditas Tanaman</span></a></li>
		<li @if(strpos($uri, 'lahan/komoditas/ikan') !== false) class="active" @endif><a href="{{ action('LahanKomoditasController@index', 'ikan') }}"><i class="fa fa-map"></i> <span>Komoditas Ikan</span></a></li>
	
		<li class="header">SETTING</li>
		<li @if(preg_match('#^location#', $uri) === 1) class="active" @endif><a href="{{ action('LocationController@index') }}"><i class="fa fa-map-marker"></i> <span>Lokasi</span></a></li>
		<li @if(preg_match('#^admin#', $uri) === 1) class="active" @endif><a href="{{ action('AdminController@index') }}"><i class="fa fa-user"></i> <span>Admin</span></a></li>
	
		@if(in_array($auth->role, ['superadmin']))
			<li @if(preg_match('#^komoditas#', $uri) === 1) class="active" @endif><a href="{{ action('KomoditasController@index') }}"><i class="fa fa-map"></i> <span>Komoditas</span></a></li>
		@endif
	@endif
	<hr>
	<li><a href="{{ action('Auth\LoginController@logout') }}"><i class="glyphicon glyphicon-log-out"></i> <span>Keluar</span></a></li>
</ul>