@php
	$provinsi = App\Provinsi::get();
	$kabupaten = App\Kabupaten::with(['provinsi'])->get();
	$kecamatan = App\Kecamatan::with(['kabupaten.provinsi'])->get();
	$desa = App\Desa::with(['kecamatan.kabupaten.provinsi'])->get();
@endphp

@extends('base')

@section('title', 'Lokasi')

@section('bodyClass', 'sidebar-collapse')

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
			Lokasi
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
							<li class="my-li active"><a href="#" onclick="showBox(this, '#box_des')"><i class="fa fa-inbox"></i> Desa
								<span class="label label-primary pull-right">{{ $desa->count() }}</span></a>
							</li>
							<li class="my-li"><a href="#" onclick="showBox(this, '#box_kec')"><i class="fa fa-inbox"></i> Kecamatan
								<span class="label label-primary pull-right">{{ $kecamatan->count() }}</span></a>
							</li>
							<li class="my-li"><a href="#" onclick="showBox(this, '#box_kab')"><i class="fa fa-inbox"></i> Kabupaten
								<span class="label label-primary pull-right">{{ $kabupaten->count() }}</span></a>
							</li>
							<li class="my-li"><a href="#" onclick="showBox(this, '#box_pro')"><i class="fa fa-inbox"></i> Provinsi
								<span class="label label-primary pull-right">{{ $provinsi->count() }}</span></a>
							</li>
						</ul>
					</div>
					<!-- /.box-body -->
				</div>
			</div>
			<div class="col-md-9" id="box_des" style="display: none;">
				<div class="box box-primary box-flat">
					<div class="box-header with-border">
						<h3 class="box-title">Desa</h3>
						<div class="box-tools pull-right">
							<a href="{{ action('LocationController@create', 'desa') }}" class="btn btn-block btn-success btn-flat"><i class="fa fa-plus"></i>&nbsp;&nbsp;Tambah Desa</a>
						</div>
					</div>
					<div class="box-body">
						<table class="table table-bordered table-striped datatable">
							<thead>
								<tr>
									<th>Nama</th>
									<th>Kecamatan</th>
									<th>Kabupaten</th>
									<th>Provinsi</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								@foreach($desa as $val)
								<tr>
									<td>{{ $val->name }}</td>
									<td>{{ $val->kecamatan->name }}</td>
									<td>{{ $val->kecamatan->kabupaten->name }}</td>
									<td>{{ $val->kecamatan->kabupaten->provinsi->name }}</td>
									<td>
										<a href="{{ action('LocationController@edit', ['kecamatan', $val->id]) }}" class="btn btn-sm btn-success btn-flat"><i class="fa fa-pencil"></i>&nbsp;&nbsp;Ubah</a>
										<a href="{{ action('LocationController@delete', ['kecamatan', $val->id]) }}" class="btn btn-sm btn-danger btn-flat"><i class="fa fa-trash"></i>&nbsp;&nbsp;Hapus</a>
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
						<h3 class="box-title">Kecamatan</h3>
						<div class="box-tools pull-right">
							<a href="{{ action('LocationController@create', 'kecamatan') }}" class="btn btn-block btn-success btn-flat"><i class="fa fa-plus"></i>&nbsp;&nbsp;Tambah Kecamatan</a>
						</div>
					</div>
					<div class="box-body">
						<table class="table table-bordered table-striped datatable">
							<thead>
								<tr>
									<th>Nama</th>
									<th>Kabupaten</th>
									<th>Provinsi</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								@foreach($kecamatan as $val)
								<tr>
									<td>{{ $val->name }}</td>
									<td>{{ $val->kabupaten->name }}</td>
									<td>{{ $val->kabupaten->provinsi->name }}</td>
									<td>
										<a href="{{ action('LocationController@edit', ['kecamatan', $val->id]) }}" class="btn btn-sm btn-success btn-flat"><i class="fa fa-pencil"></i>&nbsp;&nbsp;Ubah</a>
										<a href="{{ action('LocationController@delete', ['kecamatan', $val->id]) }}" class="btn btn-sm btn-danger btn-flat"><i class="fa fa-trash"></i>&nbsp;&nbsp;Hapus</a>
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
						<h3 class="box-title">Kabupaten</h3>
						<div class="box-tools pull-right">
							<a href="{{ action('LocationController@create', 'kabupaten') }}" class="btn btn-block btn-success btn-flat"><i class="fa fa-plus"></i>&nbsp;&nbsp;Tambah Kabupaten</a>
						</div>
					</div>
					<div class="box-body">
						<table class="table table-bordered table-striped datatable">
							<thead>
								<tr>
									<th>Nama</th>
									<th>Provinsi</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								@foreach($kabupaten as $val)
								<tr>
									<td>{{ $val->name }}</td>
									<td>{{ $val->provinsi->name }}</td>
									<td>
										<a href="{{ action('LocationController@edit', ['kabupaten', $val->id]) }}" class="btn btn-sm btn-success btn-flat"><i class="fa fa-pencil"></i>&nbsp;&nbsp;Ubah</a>
										<a href="{{ action('LocationController@delete', ['kabupaten', $val->id]) }}" class="btn btn-sm btn-danger btn-flat"><i class="fa fa-trash"></i>&nbsp;&nbsp;Hapus</a>
									</td>
								</tr>
								@endforeach
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-9" id="box_pro" style="display: none;">
				<div class="box box-primary box-flat">
					<div class="box-header with-border">
						<h3 class="box-title">Provinsi</h3>
						<div class="box-tools pull-right">
							<a href="{{ action('LocationController@create', 'provinsi') }}" class="btn btn-block btn-success btn-flat"><i class="fa fa-plus"></i>&nbsp;&nbsp;Tambah Provinsi</a>
						</div>
					</div>
					<div class="box-body">
						<table class="table table-bordered table-striped datatable">
							<thead>
								<tr>
									<th>Nama</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								@foreach($provinsi as $val)
								<tr>
									<td>{{ $val->name }}</td>
									<td>
										<a href="{{ action('LocationController@edit', ['provinsi', $val->id]) }}" class="btn btn-sm btn-success btn-flat"><i class="fa fa-pencil"></i>&nbsp;&nbsp;Ubah</a>
										<a href="{{ action('LocationController@delete', ['provinsi', $val->id]) }}" class="btn btn-sm btn-danger btn-flat"><i class="fa fa-trash"></i>&nbsp;&nbsp;Hapus</a>
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
			$('#box_pro').hide();
		}
		
		function showBox(asd, id){
			hideAll();
			$(id).show();		
			$('.my-li').removeClass('active'); 
			$(asd).parent().addClass("active");		
		}
	</script>
@endsection