<?php
	$auth = Auth::user();
	$lahans = $auth->p_desa->lahan;
	// dd($lahans);
?>

@extends('base')

@section('title', 'Dashboard')

@section('style')
	<link rel="stylesheet" href="{{ asset('assets') }}/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
@stop

@section('bodyClass', 'site-menubar-fold site-menubar-keep')

@section('content')	
	<section class="content-header">
		@include('alert')
		<h1>
			Silahkan pilih aktivitas
		</h1>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-md-5 col-sm-12">
				<a class="btn btn-block btn-social btn-dropbox" href="#" data-toggle="modal" data-target="#modal-rekap">
					<i class="fa fa-edit" style=" padding-top: 1rem; "></i> <b>Rekap harian</b><br><small>melakukan rekap harian pada lahan terdaftar</small>
				</a>
				<a class="btn btn-block btn-social btn-dropbox" href="{{ action('LahanController@create') }}">
					<i class="fa fa-map" style=" padding-top: 1rem; "></i> <b>Mendaftarkan Lahan</b><br><small>mendaftarkan lahan baru dengan komoditasnya</small>
				</a>
			</div>
		</div>
	</section>
	
	<div class="modal fade" id="modal-rekap">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">Silahkan Pilih Lahan</h4>
				</div>
				<div class="modal-body">
					<table class="table table-striped datatable">
						<thead>
							<tr>
								<th style="width: 10px">#</th>
								<th>Lahan</th>
								<th style="width: 40px">Aksi</th>
							</tr>
						</thead>
						<tbody>
							@foreach($lahans as $key => $val)
								<tr>
									<td>{{ $key+1 }}</td>
									<td>{{ $val->name }}</td>
									<td>
										<a href="{{ action('LahanController@detail', [$val->id]) }}" class="btn btn-sm btn-success btn-flat"><i class="fa fa-edit"></i>&nbsp;&nbsp;Rekap</a>
									</td>
								</tr>
							@endforeach
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
@endsection

@section('script')
	<script src="{{ asset('assets') }}/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
	<script src="{{ asset('assets') }}/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
	
	<script>
		$(function(){
			$('.datatable').DataTable( {
				"ordering": false,
				"info":     false,
				"lengthChange":     false,
				"columnDefs": [ {
					"searchable": false,
					"orderable": false,
					"targets": [0, 2]
				} ],
				"order": [[ 0, 'asc' ]]
			} );
		});	
</script>
@endsection