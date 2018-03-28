@extends('base')

@section('title', 'Provinsi')

@section('style')
@endsection

@section('content')
	<section class="content-header">
		<h1>
			Membuat Provinsi
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
						<h3 class="box-title">Formulir Provinsi</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<form action="{{ action('LocationController@doCreateProvinsi') }}" method="POST" role="form">
						{{ csrf_field() }}
						<div class="box-body">
							<div class="form-group">
								<label for="exampleInputEmail1">Nama</label>
								<input name="nama" type="text" class="form-control" id="exampleInputEmail1" placeholder="Nama Provinsi">
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
@endsection