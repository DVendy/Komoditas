@php
	$auth= Auth::user();
@endphp

@extends('base')

@section('title', 'Komoditas')

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
			Membuat Komoditas
			<small>
				<a href="{{ action('KomoditasController@index') }}" class="btn btn-block btn-success btn-flat"><i class="fa fa-map-marker"></i>&nbsp;&nbsp;Semua Komoditas</a>
			</small>
		</h1>
	</section>
	<!-- Main content -->
	<section class="content">
		<form action="{{ action('KomoditasController@doCreate') }}" method="POST" role="form">
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
							<h3 class="box-title">Formulir Komoditas</h3>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<div class="box-body">
							<div class="form-group">
								<label for="exampleInputEmail1">Tipe Komoditas</label>
								<select class="form-control" name="type">
									<option selected disabled>--Pilih Tipe--</option>
									<option value="ternak">Ternak</option>
									<option value="tanaman">Tanaman</option>
									<option value="ikan">Ikan</option>
								</select>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Nama</label>
								<input name="name" type="text" class="form-control" placeholder="Nama Komoditas">
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
@endsection