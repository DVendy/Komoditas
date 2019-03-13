@php
	$auth= Auth::user();
	$fase = App\Fase::all();
	
	$provinsi = App\Provinsi::all();
	$kabupaten = App\Kabupaten::all();
	$kecamatan = App\Kecamatan::all();
	$desa = App\Desa::all();
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
								<label for="exampleInputEmail1">Lokasi</label>
								<div class="row">
									<div class="col-md-6">
										<select class="form-control" id="select_prov">
											<option selected disabled>--Pilih Provinsi--</option>
											@foreach($provinsi as $val)
												<option value="{{ $val->id }}">{{ $val->name }}</option>
											@endforeach
										</select>
									</div>
									<div class="col-md-6">
										<select class="form-control" id="select_kab">
											<option selected disabled>--Pilih Kabupaten--</option>
											@foreach($kabupaten as $val)
												<option data-prov_id="{{ $val->provinsi_id }}" value="{{ $val->id }}">{{ $val->name }}</option>
											@endforeach
										</select>
									</div>
									<div class="col-md-6">
										<br>
										<select class="form-control" id="select_kec">
											<option selected disabled>--Pilih Kecamatan--</option>
											@foreach($kecamatan as $val)
												<option data-kab_id="{{ $val->kabupaten_id }}" value="{{ $val->id }}">{{ $val->name }}</option>
											@endforeach
										</select>
									</div>
									<div class="col-md-6">
										<br>
										<select name="desa_id" class="form-control" id="select_desa">
											<option selected disabled>--Pilih Desa--</option>
											@foreach($desa as $val)
												<option data-kec_id="{{ $val->kecamatan_id }}" value="{{ $val->id }}">{{ $val->name }}</option>
											@endforeach
										</select>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Nama</label>
								<input name="nama" type="text" class="form-control" id="exampleInputEmail1" placeholder="Nama Lahan sebagai identifikasi">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Luas - dalam satuan Meter persegi (m<sup>2</sup>)</label>
								<input name="luas" type="number" class="form-control" placeholder="ex: 846.56" step="0.01">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Informasi pemilik lahan</label>
								<textarea name="pemilik" class="form-control" rows="5" placeholder="Informasi pemilik lahan : Nama, alamat, nomor HP, dsb"></textarea>
							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1">Lokasi Lahan</label>
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
		// select
		function ChangeProv() {
			var curProv = $('#select_prov').val(); //Get the current select project
			$('#select_kab option').each(function () { //Loop through each option
				var curKabProv = $(this).attr('data-prov_id'); //Put the array of projects in a variable
				if (curKabProv == curProv) { //If current project ID is in array of projects
					$(this).show(); //Show the option
				} else { // Else if current project ID is NOT in array of projects
					$(this).hide(); //hide the option
				}
			});
			$('#select_kec option').each(function () { //Loop through each option
				$(this).hide(); //hide the option
			});
			$('#select_desa option').each(function () { //Loop through each option
				$(this).hide(); //hide the option
			});
		}
		
		function ChangeKab() {
			var curProv = $('#select_kab').val(); //Get the current select project
			$('#select_kec option').each(function () { //Loop through each option
				var curKabProv = $(this).attr('data-kab_id'); //Put the array of projects in a variable
				if (curKabProv == curProv) { //If current project ID is in array of projects
					$(this).show(); //Show the option
				} else { // Else if current project ID is NOT in array of projects
					$(this).hide(); //hide the option
				}
			});
			$('#select_desa option').each(function () { //Loop through each option
				$(this).hide(); //hide the option
			});
		}
		
		function ChangeKec() {
			var curKec = $('#select_kec').val(); //Get the current select project
			$('#select_desa option').each(function () { //Loop through each option
				var curkec_id = $(this).attr('data-kec_id'); //Put the array of projects in a variable
				if (curkec_id == curKec) { //If current project ID is in array of projects
					$(this).show(); //Show the option
				} else { // Else if current project ID is NOT in array of projects
					$(this).hide(); //hide the option
				}
			});
		}
		
		$('#select_prov').on('change', function() { //When we change the project, call the function
			ChangeProv();
		});
		$('#select_kab').on('change', function() { //When we change the project, call the function
			ChangeKab();
		});
		$('#select_kec').on('change', function() { //When we change the project, call the function
			ChangeKec();
		});
		
		ChangeProv(); //Call the function when we run the page
		ChangeKab(); //Call the function when we run the page
		ChangeKec(); //Call the function when we run the page
    </script>
	
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAhLTZmunvatbfgoF8lEHj8N0dsdvXosoU&callback=initMap">
	</script>
@endsection