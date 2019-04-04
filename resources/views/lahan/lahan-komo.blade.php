@php
	$auth = Auth::user();
	
	$komoditasLahan = $auth->komo_lahans($type);
	// dd($auth->komo_lahans());
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
					<div class="box-body table-responsive">
						@if($type == 'ternak')
							<table class="table table-bordered table-striped datatable">
								<thead>
									<tr>
										<th>Komoditas</th>
										<th>Nama Lahan</th>
										<th>Luas Kandang (dalam m<sup>2</sup>)</th>
										<th>Tahap Persiapan (dalam m<sup>2</sup>)</th>
										<th>Tahap Pemeliharaan (dalam m<sup>2</sup>)</th>
										<th>Tahap Panen (dalam m<sup>2</sup>)</th>
										<th>Tanggal Masuk Ternak</th>
										<th>Jumlah Ternak (dalam ekor)</th>
										<th>Tanggal Panen</th>
										<th>Estimasi Hasil Panen (dalam ekor)</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									@foreach($komoditasLahan as $val)
									<tr>
										<td>{{ $val->komoditas->name }}</td>
										<td>{{ $val->lahan->name }}</td>
										<td>{{ (float)$val->b_luas_kandang }}</td>
										<td>{{ (float)$val->b_tahap_persiapan }}</td>
										<td>{{ (float)$val->b_tahap_pemeliharaan }}</td>
										<td>{{ (float)$val->b_tahap_panen }}</td>
										<td>{{ date('d F Y', strtotime($val->b_tanggal_masuk_ternak)) }}</td>
										<td>{{ round($val->b_jumlah_ternak, 0) }}</td>
										<td>{{ date('d F Y', strtotime($val->b_tanggal_masuk_ternak)) }}</td>
										<td>{{ round($val->b_estimasi_hasil_panen, 0) }}</td>
										<td>
											<a href="{{ action('LahanKomoditasController@detail', [$type, $val->id]) }}" class="btn btn-sm btn-success btn-flat"><i class="fa fa-pencil"></i>&nbsp;&nbsp;Detail</a>
											<a href="#" class="btn btn-sm btn-danger btn-flat"><i class="fa fa-trash"></i>&nbsp;&nbsp;Hapus</a>
										</td>
									</tr>
									@endforeach
								</tbody>
							</table>
						@endif
						@if($type == 'tanaman')
							<table class="table table-bordered table-striped datatable">
								<thead>
									<tr>
										<th>Komoditas</th>
										<th>Nama Lahan</th>
										<th>Luas Lahan (dalam m<sup>2</sup>)</th>
										<th>Tahap Persiapan (dalam m<sup>2</sup>)</th>
										<th>Tahap Pemeliharaan (dalam m<sup>2</sup>)</th>
										<th>Tahap Panen (dalam m<sup>2</sup>)</th>
										<th>Tanggal Mulai Tanam</th>
										<th>Jumlah Tanaman (dalam pohon)</th>
										<th>Tanggal Panen</th>
										<th>Estimasi Hasil Panen (dalam kg)</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									@foreach($komoditasLahan as $val)
									<tr>
										<td>{{ $val->komoditas->name }}</td>
										<td>{{ $val->lahan->name }}</td>
										<td>{{ (float)$val->t_luas_lahan }}</td>
										<td>{{ (float)$val->t_tahap_persiapan }}</td>
										<td>{{ (float)$val->t_tahap_pemeliharaan }}</td>
										<td>{{ (float)$val->t_tahap_panen }}</td>
										<td>{{ date('d F Y', strtotime($val->t_tanggal_mulai_tanam)) }}</td>
										<td>{{ round($val->t_jumlah_tanaman, 0) }}</td>
										<td>{{ date('d F Y', strtotime($val->t_tanggal_panen)) }}</td>
										<td>{{ round($val->t_estimasi_hasil_panen, 0) }}</td>
										<td>
											<a href="{{ action('LahanKomoditasController@detail', [$type, $val->id]) }}" class="btn btn-sm btn-success btn-flat"><i class="fa fa-pencil"></i>&nbsp;&nbsp;Ubah</a>
											<a href="#" class="btn btn-sm btn-danger btn-flat"><i class="fa fa-trash"></i>&nbsp;&nbsp;Hapus</a>
										</td>
									</tr>
									@endforeach
								</tbody>
							</table>
						@endif
						@if($type == 'ikan')
							<table class="table table-bordered table-striped datatable">
								<thead>
									<tr>
										<th>Komoditas</th>
										<th>Nama Lahan</th>
										<th>Luas Kolam (dalam m<sup>2</sup>)</th>
										<th>Tahap Persiapan (dalam m<sup>2</sup>)</th>
										<th>Tahap Pemeliharaan (dalam m<sup>2</sup>)</th>
										<th>Tahap Panen (dalam m<sup>2</sup>)</th>
										<th>Tanggal Tebar Ikan</th>
										<th>Jumlah Ikan (dalam ekor)</th>
										<th>Tanggal Panen</th>
										<th>Estimasi Hasil Panen (dalam kg)</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									@foreach($komoditasLahan as $val)
									<tr>
										<td>{{ $val->komoditas->name }}</td>
										<td>{{ $val->lahan->name }}</td>
										<td>{{ (float)$val->i_luas_kolam }}</td>
										<td>{{ (float)$val->i_tahap_persiapan }}</td>
										<td>{{ (float)$val->i_tahap_pemeliharaan }}</td>
										<td>{{ (float)$val->i_tahap_panen }}</td>
										<td>{{ date('d F Y', strtotime($val->i_tanggal_tebar_ikan)) }}</td>
										<td>{{ round($val->i_jumlah_ikan, 0) }}</td>
										<td>{{ date('d F Y', strtotime($val->i_tanggal_panen)) }}</td>
										<td>{{ round($val->i_estimasi_hasil_panen, 0) }}</td>
										<td>
											<a href="{{ action('LahanKomoditasController@detail', [$type, $val->id]) }}" class="btn btn-sm btn-success btn-flat"><i class="fa fa-pencil"></i>&nbsp;&nbsp;Ubah</a>
											<a href="#" class="btn btn-sm btn-danger btn-flat"><i class="fa fa-trash"></i>&nbsp;&nbsp;Hapus</a>
										</td>
									</tr>
									@endforeach
								</tbody>
							</table>
						@endif
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
			
			@foreach($komoditasLahan as $val)
				@if($val->lahan->lat)
				markers.push(new google.maps.Marker({
					position: {lat: {{ $val->lahan->lat }}, lng: {{ $val->lahan->long }}},
					map: map,
					label: '{{ $val->lahan->name }}',
					animation: google.maps.Animation.DROP,
				}));
				@endif
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