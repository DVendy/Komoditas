@php
	$auth= Auth::user();
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
			Detail Komoditas
			<small>
				<a href="{{ action('LahanController@index') }}" class="btn btn-block btn-success btn-flat hidden-xs"><i class="fa fa-map-marker"></i>&nbsp;&nbsp;Semua Komoditas {{ $type }}</a>
			</small>
		</h1>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-4 col-md-1">
				<a href="#" class="btn btn-app btn-block bg-orange ml-0">
					<i class="fa fa-edit"></i> Rekap Harian
				</a>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="box box-primary box-flat">
					<div class="box-header with-border">
						<h3 class="box-title">Informasi Lahan</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<div class="box-body">
						<strong><i class="fa fa-book margin-r-5"></i> Nama</strong>
						<p class="text-muted">
							{{ $data->lahan->name }}
						</p>
						<hr>
						
						<strong><i class="fa fa-book margin-r-5"></i> Luas </strong>
						<p class="text-muted">
							{{ $data->lahan->luas }} (m<sup>2</sup>)
						</p>
						<hr>
						
						<strong><i class="fa fa-book margin-r-5"></i> Pemilik </strong>
						<p class="text-muted">
							{!! nl2br($data->lahan->pemilik) !!}
						</p>
						<hr>
						
						<a href="#" class="btn btn-primary btn-block"><b><i class="fa fa-edit"></i> Ubah info lahan</b></a>
					</div>
				</div>
			</div>
			
			<div class="col-md-8">
				<div class="box box-primary box-flat">
					<div class="box-header with-border">
						<select class="form-control">
							<option>option 1</option>
							<option>option 2</option>
							<option>option 3</option>
							<option>option 4</option>
							<option>option 5</option>
						</select>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<div class="box-body">
						<strong><i class="fa fa-book margin-r-5"></i> Nama</strong>
						<p class="text-muted">
							{{ $data->lahan->name }}
						</p>
						<hr>
						
						<strong><i class="fa fa-book margin-r-5"></i> Luas </strong>
						<p class="text-muted">
							{{ $data->lahan->luas }} (m<sup>2</sup>)
						</p>
						<hr>
						
						<strong><i class="fa fa-book margin-r-5"></i> Pemilik </strong>
						<p class="text-muted">
							{!! nl2br($data->lahan->pemilik) !!}
						</p>
						<hr>
						
						<a href="#" class="btn btn-primary btn-block"><b><i class="fa fa-edit"></i> Ubah info lahan</b></a>
					</div>
				</div>
			</div>
		</div>
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