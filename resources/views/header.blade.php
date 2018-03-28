@php
	$auth = Auth::user();
@endphp

<ul class="sidebar-menu" data-widget="tree">
	@if($auth->role == 'desa')
		<li class="header">MAIN MENU</li>
		<li class="active"><a href="{{ action('LahanController@index') }}"><i class="fa fa-map"></i> <span>Lahan</span></a></li>
	@endif
	
	@if(in_array($auth->role, ['admin', 'superadmin']))
		<li class="header">MAIN MENU</li>
		<li class="active"><a href="{{ action('LahanController@indexAdmin') }}"><i class="fa fa-map"></i> <span>Lahan</span></a></li>
	
		<li class="header">SETTING</li>
		<li><a href="{{ action('LocationController@index') }}"><i class="fa fa-map-marker"></i> <span>Lokasi</span></a></li>
		<li><a href="{{ action('AdminController@index') }}"><i class="fa fa-user"></i> <span>Admin</span></a></li>
	
	@endif
	<hr>
	<li><a href="{{ action('Auth\LoginController@logout') }}"><i class="glyphicon glyphicon-log-out"></i> <span>Keluar</span></a></li>
</ul>