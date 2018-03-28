@php
	$fase = App\Fase::all();
	
	if(Request::input('fase_id') && Request::input('fase_id') != '0')
		$lahan = App\Lahan::where('fase_id', Request::input('fase_id'))->get();
	else
		$lahan = App\Lahan::all();
@endphp

@extends('base')

@section('title', 'Lahan')

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
			height: 500px;
			width: 100%;
			margin-bottom: 15px;
		}
	</style>
@endsection

@section('bodyClass', 'sidebar-collapse')

@section('content')
	<section class="content-header">
		<h1>
			Lahan
		</h1>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div id="map"></div>
				
				<form method="GET" role="form">
				<div class="box box-warning box-flat box-solid">
					<div class="box-header with-border">
						<h3 class="box-title">Filter <i class="fa fa-filter"></i></h3>
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
						</div>
						<!-- /.box-tools -->
					</div>
					<!-- /.box-header -->
					<div class="box-body" style="">
						<div class="form-group">
							<label for="exampleInputEmail1">Fase Lahan</label>
							<div class="form-group">
								<div class="radio">
									<label>
										<input type="radio" name="fase_id" id="optionsRadios1" value="0" checked>
										--Semua--
										<small>
											
										</small>
									</label>
								</div>
								@foreach($fase as $val)
								<div class="radio">
									<label>
										<input type="radio" name="fase_id" id="optionsRadios1" value="{{ $val->id }}" @if(Request::input('fase_id') == $val->id) checked @endif>
										{{ $val->name }}
										<small>
											
										</small>
									</label>
								</div>
								@endforeach
							</div>
						</div>
					</div>
					<!-- /.box-body -->
					<div class="box-footer">
						<button type="submit" class="btn btn-primary btn-flat"><i class="fa fa-filter"></i>&nbsp;&nbsp;Filter</button>
					</div>
				</div>
				</form>
				
				<div class="box box-primary box-flat box-solid">
					<div class="box-header with-border">
						<h3 class="box-title">Lahan <i class="fa fa-map"></i></h3>
					</div>
					<div class="box-body">
						<table class="table table-bordered table-striped datatable">
							<thead>
								<tr>
									<th>Nama</th>
									<th>Luas</th>
									<th>Fase</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								@foreach($lahan as $val)
								<tr>
									<td>{{ $val->name }}</td>
									<td>{{ (float)$val->luas }} m<sup>2</sup></td>
									<td>{{ $val->fase->name }}</td>
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
				}));
			@endforeach
			
			// Cluster
			var markerCluster = new MarkerClusterer(map, markers,
						{imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m', gridSize: 20});
		}	
	</script>
	
	<script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js">
    </script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDqAolMxKdmVGho_hUHT8PSruNHsEmzWR4&callback=initMap">
	</script>
@endsection