<ul class="sidebar-menu" data-widget="tree">
	<li class="header">HEADER</li>
	<!-- Optionally, you can add icons to the links -->
	<li class="active"><a href="#"><i class="fa fa-link"></i> <span>Link</span></a></li>
	<li><a href="#"><i class="fa fa-link"></i> <span>Another Link</span></a></li>
	
	<li class="header">SETTING</li>
	<li><a href="{{ action('LocationController@index') }}"><i class="fa fa-map-marker"></i> <span>Lokasi</span></a></li>
	<li><a href="{{ action('AdminController@index') }}"><i class="fa fa-user"></i> <span>Admin</span></a></li>
	
	<hr>
	<li><a href="{{ action('Auth\LoginController@logout') }}"><i class="glyphicon glyphicon-log-out"></i> <span>Keluar</span></a></li>
</ul>