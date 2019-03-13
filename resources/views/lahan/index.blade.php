@php
	$auth = Auth::user();
	
	if($auth->role == 'desa')
		$lahan = Auth::user()->lahan_pengurus;
	else
		$lahan = App\Lahan::all();
	// dd($lahan);
@endphp

@extends('base')

@section('title', 'Lahan')

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
		#map {
			height: 300px;
			width: 100%;
			margin-bottom: 15px;
		}
	</style>
@endsection

@section('content')
	<section class="content-header">
		<h1>
			Lahan
			<small>
				<a href="{{ action('LahanController@create') }}" class="btn btn-block btn-success btn-flat"><i class="fa fa-map"></i>&nbsp;&nbsp;Tambah Lahan</a>
			</small>
		</h1>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div id="map"></div>
				<div class="box box-primary box-flat">
					<div class="box-header with-border">
						<h3 class="box-title">Lahan</h3>
					</div>
					<div class="box-body table-responsive no-padding">
						<table class="table table-bordered table-striped datatable">
							<thead>
								<tr>
									<th>Provinsi</th>
									<th>Kabupaten</th>
									<th>Kecamatan</th>
									<th>Desa</th>
									<th>Nama</th>
									<th>Luas</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								@foreach($lahan as $val)
								<tr>
									<td>{{ $val->desa->kecamatan->kabupaten->provinsi->name }}</td>
									<td>{{ $val->desa->kecamatan->kabupaten->name }}</td>
									<td>{{ $val->desa->kecamatan->name }}</td>
									<td>{{ $val->desa->name }}</td>
									<td>{{ $val->name }}</td>
									<td>{{ (float)$val->luas }} m<sup>2</sup></td>
									<td>
										<a href="{{ action('LahanController@edit', [$val->id]) }}" class="btn btn-sm btn-success btn-flat"><i class="fa fa-pencil"></i>&nbsp;&nbsp;Ubah</a>
										<a href="{{ action('LahanController@delete', [$val->id]) }}" class="btn btn-sm btn-danger btn-flat"><i class="fa fa-trash"></i>&nbsp;&nbsp;Hapus</a>
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
		});	
		
		var map;
		var markers;
		var infowindow;
		
		function initMap() {
			var myCenter=new google.maps.LatLng(-7.284669945290895, 109.51414789118007);
			
			map = new google.maps.Map(document.getElementById('map'), {
				zoom: 7,
				center: myCenter,
				gestureHandling: 'greedy'
			});
			
			placeMarker();
		}

		function placeMarker() {
			if ( markers != null ) {
				markers.setMap(null);
			} 
			markers = [];
			
			@foreach($lahan as $val)
				markers.push(new google.maps.Marker({
					position: {lat: {{ $val->lat }}, lng: {{ $val->long }}},
					map: map,
					label: '{{ $val->name }}',
					animation: google.maps.Animation.DROP,
				}));
			@endforeach
			
			// Cluster
			var mcOptions = {gridSize: 50, maxZoom: 15};
			var markerCluster = new MarkerClusterer(map, markers,
						{imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m', gridSize: 50});
		}		
	</script>
	
	<script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js">
    </script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAhLTZmunvatbfgoF8lEHj8N0dsdvXosoU&callback=initMap">
	</script>
@endsection