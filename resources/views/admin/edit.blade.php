@php
	$auth = Auth::user();
	$provinsi = App\Provinsi::orderBy('name')->get();
	$kabupaten = App\Kabupaten::orderBy('name')->get();
	$kecamatan = App\Kecamatan::orderBy('name')->get();
	$desa = App\Desa::orderBy('name')->get();
	
	if($admin->role == 'kordes'){
		$u_prov = '0';
		$u_kab = '0';
		$u_kec = '0';
		if($admin->p_desa){
			$u_prov = $admin->p_desa->kecamatan->kabupaten->provinsi->id;
			$u_kab = $admin->p_desa->kecamatan->kabupaten->id;
			$u_kec = $admin->p_desa->kecamatan->id;
		}
	}
@endphp

@extends('base')

@section('title', 'Admin')

@section('style')
@endsection

@section('content')
	<section class="content-header">
		<h1>
			Membuat Admin
			<small>
				<a href="{{ action('AdminController@index') }}" class="btn btn-block btn-success btn-flat"><i class="fa fa-user"></i> Semua Admin</a>
			</small>
		</h1>
	</section>
	<!-- Main content -->
	<form action="{{ action('AdminController@doEdit', $admin->id) }}" method="POST" role="form">
	<section class="content">
		<div class="row">
			<div class="col-md-6">
				@if($errors->all())
					<div class="callout callout-danger">
						<h4>Terjadi kesalahan:</h4>
						<p>
							@if($errors->all())
								@foreach($errors->all() as $key => $value)
								<li>{{ $value }}</li>
								@endforeach
							@endif
						</p>
					</div>
				@endif
				<div class="box box-primary box-flat">
					<div class="box-header with-border">
						<h3 class="box-title">Formulir Admin</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
						{{ csrf_field() }}
						<div class="box-body">
							<div class="form-group">
								<label for="exampleInputEmail1">Role</label>
								<select name="role" class="form-control" id="select_role" onchange="changeRole()">
									<option selected disabled>--Pilih Role--</option>
									<option value="kordes">Admin Desa</option>
									<option value="admin">Admin</option>
									@if(in_array($auth->role, ['superadmin']))
										<option value="superadmin">Super Admin</option>
									@endif
								</select>
							</div>
							
							<div id="admin_desa">
								<div class="form-group">
									<label for="exampleInputEmail1">Provinsi</label>
									<select class="form-control" id="select_prov">
										<option value="" selected disabled>--Pilih Provinsi--</option>
										@foreach($provinsi as $val)
											<option value="{{ $val->id }}">{{ $val->name }}</option>
										@endforeach
									</select>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Kabupaten</label>
									<select class="form-control" id="select_kab">
										<option value="" selected disabled>--Pilih Kabupaten--</option>
										@foreach($kabupaten as $val)
											<option data-prov_id="{{ $val->provinsi_id }}" value="{{ $val->id }}">{{ $val->name }}</option>
										@endforeach
									</select>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Kecamatan</label>
									<select class="form-control" id="select_kec">
										<option value="" selected disabled>--Pilih Kecamatan--</option>
										@foreach($kecamatan as $val)
											<option data-kab_id="{{ $val->kabupaten_id }}" value="{{ $val->id }}">{{ $val->name }}</option>
										@endforeach
									</select>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">Desa</label>
									<select name="desa_id" class="form-control" id="select_des">
										<option value="" selected disabled>--Pilih Desa--</option>
										@foreach($desa as $val)
											<option data-kec_id="{{ $val->kecamatan_id }}" value="{{ $val->id }}">{{ $val->name }}</option>
										@endforeach
									</select>
								</div>
							</div>
						</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="box box-primary box-flat">
					<div class="box-header with-border">
						<h3 class="box-title">Formulir Admin</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<form action="{{ action('AdminController@doCreate') }}" method="POST" role="form">
						{{ csrf_field() }}
						<div class="box-body">
							
							<div class="form-group">
								<label for="exampleInputEmail1">Nama</label>
								<input name="name" type="text" class="form-control" placeholder="Nama Lengkap" value="{{ $admin->name }}">
							</div>
							<div class="form-group" id="form_email">
								<label for="exampleInputEmail1">Alamat Email</label>
								<input name="email" type="text" class="form-control" placeholder="email@domain.com" value="{{ $admin->email }}">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Nomor HP</label>
								<input name="phone" type="text" class="form-control" placeholder="081234567890" value="{{ $admin->phone }}">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label>
								<input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Kosongkan jika tidak berubah">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Ketik Ulang Password</label>
								<input name="password_confirmation" type="password" class="form-control" placeholder="Ketik Ulang Password">
							</div>
						</div>
						<!-- /.box-body -->
						<div class="box-footer">
							<button type="submit" class="btn btn-primary btn-flat pull-right">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	</form>
@endsection

@section('script')
	<script>
		$('#admin_desa').hide();
		
		function changeRole(){
			var role = $('#select_role').val();
			
			if(role == 'kordes'){
				$('#form_email').hide();
				$('#admin_desa').show();
			}else{
				$('#form_email').show();
				$('#admin_desa').hide();
			}
		}
		
		function ChangeProv() {
			$('#select_kab').val('');
			$('#select_kec').val('');
			$('#select_des').val('');
			var curProv = $('#select_prov').val(); //Get the current select project
			$('#select_kab option').each(function () { //Loop through each option
				var curKabProv = $(this).attr('data-prov_id'); //Put the array of projects in a variable
				if (curKabProv == curProv) { //If current project ID is in array of projects
					$(this).show(); //Show the option
				} else { // Else if current project ID is NOT in array of projects
					$(this).hide(); //hide the option
				}
			});
		}
		
		function ChangeKab() {
			$('#select_kec').val('');
			$('#select_des').val('');
			var curProv = $('#select_kab').val(); //Get the current select project
			$('#select_kec option').each(function () { //Loop through each option
				var curKabProv = $(this).attr('data-kab_id'); //Put the array of projects in a variable
				if (curKabProv == curProv) { //If current project ID is in array of projects
					$(this).show(); //Show the option
				} else { // Else if current project ID is NOT in array of projects
					$(this).hide(); //hide the option
				}
			});
		}
		
		function ChangeKec() {
			$('#select_des').val('');
			var curProv = $('#select_kec').val(); //Get the current select project
			$('#select_des option').each(function () { //Loop through each option
				var curKabProv = $(this).attr('data-kec_id'); //Put the array of projects in a variable
				if (curKabProv == curProv) { //If current project ID is in array of projects
					$(this).show(); //Show the option
				} else { // Else if current project ID is NOT in array of projects
					$(this).hide(); //hide the option
				}
			});
		}
		
		ChangeProv(); //Call the function when we run the page
		ChangeKab(); //Call the function when we run the page
		ChangeKec(); //Call the function when we run the page
		
		$('#select_prov').on('change', function() { //When we change the project, call the function
			ChangeProv();
		});
		$('#select_kab').on('change', function() { //When we change the project, call the function
			ChangeKab();
		});
		$('#select_kec').on('change', function() { //When we change the project, call the function
			ChangeKec();
		});
		
		$('#select_role').val('{{ $admin->role }}');
		changeRole();
		@if(($admin->role == 'kordes') && $admin->p_desa)
			$('#select_prov').val('{{ $u_prov }}');
			ChangeProv(); //Call the function when we run the page
			$('#select_kab').val('{{ $u_kab }}');
			ChangeKab(); //Call the function when we run the page
			$('#select_kec').val('{{ $u_kec }}');
			ChangeKec(); //Call the function when we run the page
			$('#select_des').val('{{ $admin->p_desa->id }}');
		@endif
	</script>
@endsection