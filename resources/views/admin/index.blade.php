@php
	$admin_prov = App\User::where('role', 'korprov')->with('p_provinsi')->get();
	$admin_kab = App\User::where('role', 'korkab')->with('p_kabupaten')->get();
	$admin_kec = App\User::where('role', 'korkec')->with('p_kecamatan')->get();
	$admin_desa = App\User::where('role', 'kordes')->with('p_desa')->get();
	$admin = App\User::whereIn('role', ['superadmin', 'admin'])->get();
@endphp

@extends('base')

@section('title', 'Admin')

@section('style')
	<link rel="stylesheet" href="{{ asset('assets') }}/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
	
	<style>
		table{
			box-shadow: 0 1px 1px rgba(0,0,0,0.1);
		}
		tr td:last-child{
			width:1%;
			white-space:nowrap;
		}
	</style>
@endsection

@section('content')
	<section class="content-header">
		<h1>
			Admin
			<small>
				<a href="{{ action('AdminController@create') }}" class="btn btn-block btn-success btn-flat"><i class="fa fa-user-plus"></i> Tambah Admin</a>
			</small>
		</h1>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-3">
			
				@if (session('create'))
					<div class="alert alert-success alert-dismissible">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
						<h4><i class="icon fa fa-check"></i> Sukses</h4>
						{{ session('create') }} telah berhasil dibuat.
					</div>
				@endif
			  
				<div class="box box-solid">
					<div class="box-body no-padding">
						<ul class="nav nav-pills nav-stacked">
							<li class="my-li active"><a href="#" onclick="showBox(this, '#box_des')"><i class="fa fa-inbox"></i> Koordinator Desa
								<span class="label label-primary pull-right">{{ $admin_desa->count() }}</span></a>
							</li>
							<li class="my-li"><a href="#" onclick="showBox(this, '#box_kec')"><i class="fa fa-inbox"></i> Koordinator Kecamatan
								<span class="label label-primary pull-right">{{ $admin_kec->count() }}</span></a>
							</li>
							<li class="my-li"><a href="#" onclick="showBox(this, '#box_kab')"><i class="fa fa-inbox"></i> Koordinator Kabupaten
								<span class="label label-primary pull-right">{{ $admin_kab->count() }}</span></a>
							</li>
							<li class="my-li"><a href="#" onclick="showBox(this, '#box_prov')"><i class="fa fa-inbox"></i> Koordinator Provinsi
								<span class="label label-primary pull-right">{{ $admin_prov->count() }}</span></a>
							</li>
							<li class="my-li"><a href="#" onclick="showBox(this, '#box_admin')"><i class="fa fa-inbox"></i> Admin
								<span class="label label-primary pull-right">{{ $admin->count() }}</span></a>
							</li>
						</ul>
					</div>
					<!-- /.box-body -->
				</div>
			</div>
			<div class="col-md-9" id="box_des" style="display: none;">
				<div class="box box-primary box-flat">
					<div class="box-header with-border">
						<h3 class="box-title">Koordinator Desa</h3>
					</div>
					<div class="box-body">
						<table class="table table-bordered table-striped datatable">
							<thead>
								<tr>
									<th>Nama</th>
									<th>No. HP</th>
									<th>Desa</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								@foreach($admin_desa as $val)
								<tr>
									<td>{{ $val->name }}</td>
									<td>{{ $val->phone }}</td>
									<td>{{ $val->p_desa->name }}</td>
									<td>
										<a href="{{ action('AdminController@edit', $val->id) }}" class="btn btn-sm btn-success btn-flat"><i class="fa fa-pencil"></i>&nbsp;&nbsp;Ubah</a>
										<a href="{{ action('AdminController@delete', $val->id) }}" class="btn btn-sm btn-danger btn-flat"><i class="fa fa-trash"></i>&nbsp;&nbsp;Hapus</a>
									</td>
								</tr>
								@endforeach
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-9" id="box_kec" style="display: none;">
				<div class="box box-primary box-flat">
					<div class="box-header with-border">
						<h3 class="box-title">Koordinator Kecamatan</h3>
					</div>
					<div class="box-body">
						<table class="table table-bordered table-striped datatable">
							<thead>
								<tr>
									<th>Nama</th>
									<th>No. HP</th>
									<th>Kecamatan</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								@foreach($admin_kec as $val)
								<tr>
									<td>{{ $val->name }}</td>
									<td>{{ $val->phone }}</td>
									<td>{{ $val->p_kecamatan->name }}</td>
									<td>
										<a href="{{ action('AdminController@edit', $val->id) }}" class="btn btn-sm btn-success btn-flat"><i class="fa fa-pencil"></i>&nbsp;&nbsp;Ubah</a>
										<a href="{{ action('AdminController@delete', $val->id) }}" class="btn btn-sm btn-danger btn-flat"><i class="fa fa-trash"></i>&nbsp;&nbsp;Hapus</a>
									</td>
								</tr>
								@endforeach
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-9" id="box_kab" style="display: none;">
				<div class="box box-primary box-flat">
					<div class="box-header with-border">
						<h3 class="box-title">Koordinator Kabupaten</h3>
					</div>
					<div class="box-body">
						<table class="table table-bordered table-striped datatable">
							<thead>
								<tr>
									<th>Nama</th>
									<th>No. HP</th>
									<th>Kabupaten</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								@foreach($admin_kab as $val)
								<tr>
									<td>{{ $val->name }}</td>
									<td>{{ $val->phone }}</td>
									<td>{{ $val->p_kabupaten->name }}</td>
									<td>
										<a href="{{ action('AdminController@edit', $val->id) }}" class="btn btn-sm btn-success btn-flat"><i class="fa fa-pencil"></i>&nbsp;&nbsp;Ubah</a>
										<a href="{{ action('AdminController@delete', $val->id) }}" class="btn btn-sm btn-danger btn-flat"><i class="fa fa-trash"></i>&nbsp;&nbsp;Hapus</a>
									</td>
								</tr>
								@endforeach
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-9" id="box_prov" style="display: none;">
				<div class="box box-primary box-flat">
					<div class="box-header with-border">
						<h3 class="box-title">Koordinator Provinsi</h3>
					</div>
					<div class="box-body">
						<table class="table table-bordered table-striped datatable">
							<thead>
								<tr>
									<th>Nama</th>
									<th>No. HP</th>
									<th>Provinsi</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								@foreach($admin_prov as $val)
								<tr>
									<td>{{ $val->name }}</td>
									<td>{{ $val->phone }}</td>
									<td>{{ $val->p_provinsi->name }}</td>
									<td>
										<a href="{{ action('AdminController@edit', $val->id) }}" class="btn btn-sm btn-success btn-flat"><i class="fa fa-pencil"></i>&nbsp;&nbsp;Ubah</a>
										<a href="{{ action('AdminController@delete', $val->id) }}" class="btn btn-sm btn-danger btn-flat"><i class="fa fa-trash"></i>&nbsp;&nbsp;Hapus</a>
									</td>
								</tr>
								@endforeach
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-9" id="box_admin" style="display: none;">
				<div class="box box-primary box-flat">
					<div class="box-header with-border">
						<h3 class="box-title">Admin</h3>
					</div>
					<div class="box-body">
						<table class="table table-bordered table-striped datatable">
							<thead>
								<tr>
									<th>Nama</th>
									<th>No. HP</th>
									<th>Email</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								@foreach($admin as $val)
								<tr>
									<td>{{ $val->name }}</td>
									<td>{{ $val->phone }}</td>
									<td>{{ $val->email }}</td>
									<td>
										<a href="{{ action('AdminController@edit', $val->id) }}" class="btn btn-sm btn-success btn-flat"><i class="fa fa-pencil"></i>&nbsp;&nbsp;Ubah</a>
										<a href="{{ action('AdminController@delete', $val->id) }}" class="btn btn-sm btn-danger btn-flat"><i class="fa fa-trash"></i>&nbsp;&nbsp;Hapus</a>
									</td>
								</tr>
								@endforeach
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
@endsection

@section('script')
<script src="{{ asset('assets') }}/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="{{ asset('assets') }}/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

	<script>
		$(function(){
			$('.datatable').DataTable()
			$('#box_des').show();
		});
		
		function hideAll(){
			$('#box_des').hide();
			$('#box_kec').hide();
			$('#box_kab').hide();
			$('#box_prov').hide();
			$('#box_admin').hide();
		}
		
		function showBox(asd, id){
			hideAll();
			$(id).show();		
			$('.my-li').removeClass('active'); 
			$(asd).parent().addClass("active");		
		}
	</script>
@endsection