@php
	$provinsi = App\Provinsi::all();
	$kabupaten = App\Kabupaten::all();
@endphp

@extends('base')

@section('title', 'Kecamatan')

@section('style')
@endsection

@section('content')
	<section class="content-header">
		<h1>
			Membuat Kecamatan
			<small>
				<a href="{{ action('LocationController@index') }}" class="btn btn-block btn-success btn-flat"><i class="fa fa-map-marker"></i>&nbsp;&nbsp;Semua Lokasi</a>
			</small>
		</h1>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-6">
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
						<h3 class="box-title">Formulir Kecamatan</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<form action="{{ action('LocationController@doCreateKecamatan') }}" method="POST" role="form">
						{{ csrf_field() }}
						<div class="box-body">
							<div class="form-group">
								<label for="exampleInputEmail1">Provinsi</label>
								<select class="form-control" id="select_prov">
									<option selected disabled>--Pilih Provinsi--</option>
									@foreach($provinsi as $val)
										<option value="{{ $val->id }}">{{ $val->name }}</option>
									@endforeach
								</select>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Kabupaten</label>
								<select name="kabupaten_id" class="form-control" id="select_kab">
									<option selected disabled>--Pilih Kabupaten--</option>
									@foreach($kabupaten as $val)
										<option data-prov_id="{{ $val->provinsi_id }}" value="{{ $val->id }}">{{ $val->name }}</option>
									@endforeach
								</select>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Nama</label>
								<input name="nama" type="text" class="form-control" id="exampleInputEmail1" placeholder="Nama Kecamatan">
							</div>
						</div>
						<!-- /.box-body -->
						<div class="box-footer">
							<button type="submit" class="btn btn-primary btn-flat pull-right">Simpan</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
@endsection

@section('script')
	<script>
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
		}
		
		ChangeProv(); //Call the function when we run the page
		$('#select_prov').on('change', function() { //When we change the project, call the function
			ChangeProv();
		});
	</script>
@endsection