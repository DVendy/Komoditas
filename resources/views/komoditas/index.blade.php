@php
	$komoditas = App\Komoditas::all();
@endphp

@extends('base')

@section('title', 'Lokasi')

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
			Komoditas
		</h1>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-8">
				<div class="box box-primary box-flat">
					<div class="box-header with-border">
						<a href="{{ action('KomoditasController@create') }}" class="btn btn-success btn-flat"><i class="fa fa-plus"></i>&nbsp;&nbsp;Tambah Komoditas</a>
					</div>
					<div class="box-body">
						<table class="table table-bordered table-striped datatable">
							<thead>
								<tr>
									<th>Tipe</th>
									<th>Nama</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								@foreach($komoditas as $val)
								<tr>
									<td>{{ $val->type }}</td>
									<td>{{ $val->name }}</td>
									<td>
										<a href="{{ action('KomoditasController@edit', $val->id) }}" class="btn btn-sm btn-success btn-flat"><i class="fa fa-pencil"></i>&nbsp;&nbsp;Ubah</a>
										<a href="{{ action('KomoditasController@delete', $val->id) }}" class="btn btn-sm btn-danger btn-flat"><i class="fa fa-trash"></i>&nbsp;&nbsp;Hapus</a>
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