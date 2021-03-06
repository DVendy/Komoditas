<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>AdminLTE 2 | Log in</title>
		<!-- Tell the browser to be responsive to screen width -->
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<!-- Bootstrap 3.3.7 -->
		<link rel="stylesheet" href="{{ asset('assets') }}/bower_components/bootstrap/dist/css/bootstrap.min.css">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="{{ asset('assets') }}/bower_components/font-awesome/css/font-awesome.min.css">
		<!-- Ionicons -->
		<link rel="stylesheet" href="{{ asset('assets') }}/bower_components/Ionicons/css/ionicons.min.css">
		<!-- Theme style -->
		<link rel="stylesheet" href="{{ asset('assets') }}/dist/css/AdminLTE.min.css">
		<!-- iCheck -->
		<link rel="stylesheet" href="{{ asset('assets') }}/plugins/iCheck/square/blue.css">
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		<!-- Google Font -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
		
		<style>
		body {
			overflow-y: hidden;
		}
		.login-page{
			background: url("{{ asset('/') }}/img/login_bg.jpg?v=2018");
			background-size: cover;
		}
		.login-box, .register-box {
			margin: 12% auto;
		}
		.login-box-body, .register-box-body {
			background: rgba(84, 84, 84, 0.4);
			color: #f1f1f1;
		}
		.login-logo a, .register-logo a {
			color: #fff;
			text-shadow: 0 1px 2px rgba(0,0,0,0.5), 0 1px 2px rgba(0,0,0,0.5);
		}
		</style>
	</head>
	<body class="hold-transition login-page">
		<div class="login-box">
			<div class="login-logo">
				<a href="#"><b>Sitani Ternak Ikan</b></a>
			</div>
			<!-- /.login-logo -->
			<div class="login-box-body">
				@if (session('fail') == '1')
					<div class="callout callout-danger">
						<h4>Data akun salah</h4>
						<p>Data akun yang anda masukkan salah, silahkan periksa kembali.
						</p>
					</div>
				@endif
				@if (session('fail') == '2')
					<div class="callout callout-danger">
						<h4>Tidak ada desa di bawah anda</h4>
						<p>Akun anda tidak memiliki desa yang dimanage.
						</p>
					</div>
				@endif
				<p class="login-box-msg">Silahkan masukkan data akun</p>
				<form action="{{ action('Auth\LoginController@doLogin') }}" method="post">
					{{ csrf_field() }}
					<div class="form-group has-feedback">
						<input name="email" type="text" class="form-control" placeholder="Email / No. telepon">
						<span class="glyphicon glyphicon glyphicon-earphone form-control-feedback"></span>
						<span class="glyphicon glyphicon-envelope form-control-feedback" style=" right: 25px; "></span>
					</div>
					<div class="form-group has-feedback">
						<input name="password" type="password" class="form-control" placeholder="Password">
						<span class="glyphicon glyphicon-lock form-control-feedback"></span>
					</div>
					<div class="row">
						<div class="col-xs-8">
						</div>
						<!-- /.col -->
						<div class="col-xs-4">
							<button type="submit" class="btn btn-success btn-block btn-flat"><i class="fa fa-sign-in"></i>&nbsp;&nbsp;Masuk</button>
						</div>
						<!-- /.col -->
					</div>
				</form>
			</div>
			<!-- /.login-box-body -->
		</div>
		<!-- /.login-box -->
		<!-- jQuery 3 -->
		<script src="{{ asset('assets') }}/bower_components/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap 3.3.7 -->
		<script src="{{ asset('assets') }}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- iCheck -->
		<script src="{{ asset('assets') }}/plugins/iCheck/icheck.min.js"></script>
		<script>
			$(function () {
			  $('input').iCheck({
			    checkboxClass: 'icheckbox_square-blue',
			    radioClass: 'iradio_square-blue',
			    increaseArea: '20%' /* optional */
			  });
			});
		</script>
	</body>
</html>