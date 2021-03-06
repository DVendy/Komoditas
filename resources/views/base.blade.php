@php
	$auth = Auth::user();
	$theme = 'green';
	
	if($auth->role == 'kordes')
		$theme = 'blue';
@endphp

<!DOCTYPE html>
<!--
	This is a starter template page. Use this page to start your new project from
	scratch. This page gets rid of all links and provides the needed markup only.
	-->
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>@yield('title')</title>
		<!-- Tell the browser to be responsive to screen width -->
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<link rel="stylesheet" href="{{ asset('assets') }}/bower_components/bootstrap/dist/css/bootstrap.min.css">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="{{ asset('assets') }}/bower_components/font-awesome/css/font-awesome.min.css">
		<!-- Ionicons -->
		<link rel="stylesheet" href="{{ asset('assets') }}/bower_components/Ionicons/css/ionicons.min.css">
		<!-- Theme style -->
		<link rel="stylesheet" href="{{ asset('assets') }}/dist/css/AdminLTE.min.css">
		<!-- AdminLTE Skins. We have chosen the skin-blue for this starter
			page. However, you can choose any other skin. Make sure you
			apply the skin class to the body tag so the changes take effect. -->
		<link rel="stylesheet" href="{{ asset('assets') }}/dist/css/skins/skin-{{ $theme }}.min.css">
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		<!-- Google Font -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
		
		<link rel="stylesheet" href="{{ asset('css') }}/style.css">
		
		<style>
			.box-flat{
				border-radius: 0;
			}
		</style>
		@yield('style')
	</head>
	<!--
		BODY TAG OPTIONS:
		=================
		Apply one or more of the following classes to get the
		desired effect
		|---------------------------------------------------------|
		| SKINS         | skin-blue                               |
		|               | skin-black                              |
		|               | skin-purple                             |
		|               | skin-yellow                             |
		|               | skin-red                                |
		|               | skin-green                              |
		|---------------------------------------------------------|
		|LAYOUT OPTIONS | fixed                                   |
		|               | layout-boxed                            |
		|               | layout-top-nav                          |
		|               | sidebar-collapse                        |
		|               | sidebar-mini                            |
		|---------------------------------------------------------|
		-->
	<body class="hold-transition skin-{{ $theme }} sidebar-mini @yield('bodyClass')">
		<div class="wrapper">
			<!-- Main Header -->
			<header class="main-header">
				<!-- Logo -->
				<a href="{{ url('/') }}" class="logo">
					<!-- mini logo for sidebar mini 50x50 pixels -->
					<span class="logo-mini"><b>K</b>id</span>
					<!-- logo for regular state and mobile devices -->
					<span class="logo-lg">Sitani Ternak Ikan</span>
				</a>
				<!-- Header Navbar -->
				<nav class="navbar navbar-static-top" role="navigation">
					<!-- Sidebar toggle button-->
					<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
					<span class="sr-only">Toggle navigation</span>
					</a>
					<!-- Navbar Right Menu -->
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
							<!-- Messages: style can be found in dropdown.less-->
							<li>
							<a>Selamat datang, <b>{{ $auth->name }}</b>!</a>
							</li>
						</ul>
					</div>
				</nav>
			</header>
			<!-- Left side column. contains the logo and sidebar -->
			<aside class="main-sidebar">
				<!-- sidebar: style can be found in sidebar.less -->
				<section class="sidebar">
					<!-- Sidebar user panel (optional) -->
					<div class="user-panel">
						<div class="pull-left image">
							<img src="{{ asset('assets') }}/dist/img/avatar5.png" class="img-circle" alt="User Image">
						</div>
						<div class="pull-left info">
							<p>{{ $auth->name }}</p>
							<!-- Status -->
							<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
						</div>
					</div>
					<!-- Sidebar Menu -->
					@include('header')
					<!-- /.sidebar-menu -->
				</section>
				<!-- /.sidebar -->
			</aside>
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				@yield('content')
			</div>
			<!-- /.content-wrapper -->
			<!-- Main Footer -->
			<footer class="main-footer">
				<!-- Default to the left -->
				<strong>Copyright &copy; 2019 <a href="#">Oase</a>.</strong> All rights reserved.
			</footer>
			<!-- Add the sidebar's background. This div must be placed
				immediately after the control sidebar -->
		</div>
		<!-- ./wrapper -->
		<!-- REQUIRED JS SCRIPTS -->
		<!-- jQuery 3 -->
		<script src="{{ asset('assets') }}/bower_components/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap 3.3.7 -->
		<script src="{{ asset('assets') }}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- Slimscroll -->
		<script src="{{ asset('assets') }}/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
		<!-- FastClick -->
		<script src="{{ asset('assets') }}/bower_components/fastclick/lib/fastclick.js"></script>
		<!-- AdminLTE App -->
		<script src="{{ asset('assets') }}/dist/js/adminlte.min.js"></script>
		<!-- Optionally, you can add Slimscroll and FastClick plugins.
			Both of these plugins are recommended to enhance the
			user experience. -->
		<script>
			function confirmation(msg, url) {
				var r = confirm(msg);
				if (r == true) {
					window.location.href = url;
				}
			}
		</script>
		@yield('script')
	</body>
</html>