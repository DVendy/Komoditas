@php
	$auth= Auth::user();
	$fase = App\Fase::all();
@endphp

@extends('base')

@section('title', 'Lahan')

@section('style')
	<style>
		#map {
			height: 500px;
			width: 100%;
		}
	</style>
@endsection

@section('content')
	<section class="content-header">
		<h1>
			Membuat Lahan
			<small>
				<a href="{{ action('LahanController@index') }}" class="btn btn-block btn-success btn-flat"><i class="fa fa-map-marker"></i>&nbsp;&nbsp;Semua Lahan</a>
			</small>
		</h1>
	</section>
	<!-- Main content -->
	<section class="content">
		<form action="{{ action('LahanController@doCreate') }}" method="POST" role="form">
			{{ csrf_field() }}
			<input name="desa_id" type="hidden" value="{{ $auth->desa->id }}">
			<div class="row">
				<div class="col-md-8">
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
							<h3 class="box-title">Formulir Lahan</h3>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<div class="box-body">
							<div class="form-group">
								<label for="exampleInputEmail1">Nama</label>
								<input name="nama" type="text" class="form-control" id="exampleInputEmail1" placeholder="Nama Lahan sebagai identifikasi">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Luas - dalam satuan Meter persegi (m<sup>2</sup>)</label>
								<input name="luas" type="number" class="form-control" placeholder="ex: 846.56" step="0.01">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Informasi Pemilik Lahan</label>
								<textarea name="pemilik" class="form-control" rows="5" placeholder="Informasi pemilik lahan : Nama, alamat, nomor HP, dsb"></textarea>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Fase Lahan</label>
								<div class="form-group">
									@foreach($fase as $val)
									<div class="radio">
										<label>
											<input type="radio" name="fase_id" id="optionsRadios1" value="{{ $val->id }}">
											{{ $val->name }}
											<small>
												
											</small>
										</label>
									</div>
									@endforeach
								</div>
							</div>
						</div>
					</div>
					
					<div class="box box-primary box-flat">
						<div class="box-header with-border">
							<h3 class="box-title">Lokasi Lahan</h3>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<div class="box-body">
							<div class="form-group">
								<div class="alert alert-info">
									<h4><i class="icon fa fa-info"></i> Info</h4>
									<li>Klik pada map untuk menentukan lokasi lahan.</li>
									<li>Scroll mouse untuk memperbesar map</li>
								</div>
								<div class="row">
									<div class="col-xs-6">
										<div class="input-group">
											<div class="input-group-btn">
												<button type="button" class="btn btn-warning">Latitude</button>
											</div>
											<!-- /btn-group -->
											<input type="text" id="lat" class="form-control" readonly="readonly" name="lat">
										</div>
									</div>
									<div class="col-xs-6">
										<div class="input-group">
											<div class="input-group-btn">
												<button type="button" class="btn btn-warning">Longitude</button>
											</div>
											<!-- /btn-group -->
											<input type="text" id="long" class="form-control" readonly="readonly" name="long">
										</div>
									</div>
								</div>
								<br>
								<div id="map"></div>
							</div>
						</div>
						<!-- /.box-body -->
						<div class="box-footer">
							<button type="submit" class="btn btn-primary btn-flat pull-right">Simpan</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</section>
@endsection

@section('script')
	<script>
		var map;
		var marker;
		var infowindow;
		
		function initMap() {
			var myCenter=new google.maps.LatLng(-7.284669945290895, 109.51414789118007);
			
			map = new google.maps.Map(document.getElementById('map'), {
				zoom: 7,
				center: myCenter,
				gestureHandling: 'greedy'
			});
			
			google.maps.event.addListener(map, 'click', function(event) {
				placeMarker(event.latLng);
			});
			
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(function(position) {
					var pos = {
						lat: position.coords.latitude,
						lng: position.coords.longitude
					};

					map.setCenter(pos);
					placeMarker(pos);
				}, function() {
				});
			}
		}

		function placeMarker(location) {
			if ( marker != null ) {
				marker.setMap(null);
			} 
			marker = new google.maps.Marker({
				position: location,
				map: map,
			});
			infowindow = new google.maps.InfoWindow({
				content: 'Latitude: ' + location.lat() + '<br>Longitude: ' + location.lng()
			});
			infowindow.open(map,marker);

			(document.getElementById("lat")).value = location.lat();
			(document.getElementById("long")).value = location.lng();

		}
    </script>
	
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDqAolMxKdmVGho_hUHT8PSruNHsEmzWR4&callback=initMap">
	</script>
@endsection