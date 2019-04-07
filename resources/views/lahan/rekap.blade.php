@php
	$auth= Auth::user();
@endphp

@extends('base')

@section('title', 'Lahan')

@section('style')
  <!-- bootstrap datepicker -->
	<link rel="stylesheet" href="{{ asset('assets') }}/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
	<style>
		#map {
			height: 500px;
			width: 100%;
		}
	</style>
@endsection

@section('content')
	<section class="content-header">
		@include('alert')
		<h1>
			Rekap Harian : 
			<small>
				<a href="{{ action('LahanController@detail', $data->lahan_id) }}" class="btn btn-block btn-success btn-flat hidden-xs"><i class="fa fa-map-marker"></i>&nbsp;&nbsp;Kembali</a>
			</small>
		</h1>
	</section>
	<!-- Main content -->
	<section class="content">
		
		<form action="{{ action('LahanKomoditasController@doRekap', $data->id) }}" method="POST" role="form">
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
								<h3 class="box-title">{{ $data->lahan->name }} - <b>{{ $data->komoditas->name }}</b></h3>
							</div>
					
						@if($data->type == 'ternak')
							<div class="box-body">
								<div class="form-group">
									<label>Luas Kandang (dalam m<sup>2</sup>)</label>
									<input name="b_luas_kandang" type="number" class="form-control" placeholder="contoh: 574" value="{{ $data->b_luas_kandang }}">
								</div>
								<div class="form-group">
									<label>Tahap Persiapan (dalam m<sup>2</sup>)</label>
									<input name="b_tahap_persiapan" type="number" class="form-control" placeholder="contoh: 312" value="{{ $data->b_tahap_persiapan }}">
								</div>
								<div class="form-group">
									<label>Tahap Pemeliharaan (dalam m<sup>2</sup>)</label>
									<input name="b_tahap_pemeliharaan" type="number" class="form-control" placeholder="contoh: 112" value="{{ $data->b_tahap_pemeliharaan }}">
								</div>
								<div class="form-group">
									<label>Tahap Panen (dalam m<sup>2</sup>)</label>
									<input name="b_tahap_panen" type="number" class="form-control" placeholder="contoh: 23" value="{{ $data->b_tahap_panen }}">
								</div>
								<div class="form-group">
									<label>Tanggal Masuk Ternak</label>
									<input name="b_tanggal_masuk_ternak" type="text" class="form-control datepicker" placeholder="klik untuk memilih tanggal" value="{{ date('Y-m-d', strtotime($data->b_tanggal_masuk_ternak)) }}">
								</div>
								<div class="form-group">
									<label>Jumlah Ternak (dalam ekor)</label>
									<input name="b_jumlah_ternak" type="number" class="form-control" placeholder="contoh: 155" value="{{ $data->b_jumlah_ternak }}">
								</div>
								<div class="form-group">
									<label>Tanggal Panen</label>
									<input name="b_tanggal_panen" type="text" class="form-control datepicker" placeholder="klik untuk memilih tanggal" value="{{ date('Y-m-d', strtotime($data->b_tanggal_panen)) }}">
								</div>
								<div class="form-group">
									<label>Estimasi Hasil Panen (dalam ekor)</label>
									<input name="b_estimasi_hasil_panen" type="number" class="form-control" placeholder="contoh: 103" value="{{ $data->b_estimasi_hasil_panen }}">
								</div>
							</div>
						@endif
						
						@if($data->type == 'tanaman')
							<div class="box-body">
								<div class="form-group">
									<label>Luas Lahan (dalam m<sup>2</sup>)</label>
									<input name="t_luas_lahan" type="number" class="form-control" placeholder="contoh: 574" value="{{ $data->t_luas_lahan }}">
								</div>
								<div class="form-group">
									<label>Tahap Persiapan (dalam m<sup>2</sup>)</label>
									<input name="t_tahap_persiapan" type="number" class="form-control" placeholder="contoh: 312" value="{{ $data->t_tahap_persiapan }}">
								</div>
								<div class="form-group">
									<label>Tahap Pemeliharaan (dalam m<sup>2</sup>)</label>
									<input name="t_tahap_pemeliharaan" type="number" class="form-control" placeholder="contoh: 112" value="{{ $data->t_tahap_pemeliharaan }}">
								</div>
								<div class="form-group">
									<label>Tahap Panen (dalam m<sup>2</sup>)</label>
									<input name="t_tahap_panen" type="number" class="form-control" placeholder="contoh: 23" value="{{ $data->t_tahap_panen }}">
								</div>
								<div class="form-group">
									<label>Tanggal Mulai Tanam</label>
									<input name="t_tanggal_mulai_tanam" type="text" class="form-control datepicker" placeholder="klik untuk memilih tanggal" value="{{ date('Y-m-d', strtotime($data->t_tanggal_mulai_tanam)) }}">
								</div>
								<div class="form-group">
									<label>Jumlah Tanaman (dalam pohon)</label>
									<input name="t_jumlah_tanaman" type="number" class="form-control" placeholder="contoh: 155" value="{{ $data->t_jumlah_tanaman }}">
								</div>
								<div class="form-group">
									<label>Tanggal Panen</label>
									<input name="t_tanggal_panen" type="text" class="form-control datepicker" placeholder="klik untuk memilih tanggal" value="{{ date('Y-m-d', strtotime($data->t_tanggal_panen)) }}">
								</div>
								<div class="form-group">
									<label>Estimasi Hasil Panen (dalam kg)</label>
									<input name="t_estimasi_hasil_panen" type="number" class="form-control" placeholder="contoh: 103" value="{{ $data->t_estimasi_hasil_panen }}">
								</div>
							</div>
						@endif
						
						@if($data->type == 'ikan')					
							<div class="box-body">
								<div class="form-group">
									<label>Luas Kolam (dalam m<sup>2</sup>)</label>
									<input name="i_luas_kolam" type="number" class="form-control" placeholder="contoh: 574" value="{{ $data->i_luas_kolam }}">
								</div>
								<div class="form-group">
									<label>Tahap Persiapan (dalam m<sup>2</sup>)</label>
									<input name="i_tahap_persiapan" type="number" class="form-control" placeholder="contoh: 312" value="{{ $data->i_tahap_persiapan }}">
								</div>
								<div class="form-group">
									<label>Tahap Pemeliharaan (dalam m<sup>2</sup>)</label>
									<input name="i_tahap_pemeliharaan" type="number" class="form-control" placeholder="contoh: 112" value="{{ $data->i_tahap_pemeliharaan }}">
								</div>
								<div class="form-group">
									<label>Tahap Panen (dalam m<sup>2</sup>)</label>
									<input name="i_tahap_panen" type="number" class="form-control" placeholder="contoh: 23" value="{{ $data->i_tahap_panen }}">
								</div>
								<div class="form-group">
									<label>Tanggal Tebar Ikan</label>
									<input name="i_tanggal_tebar_ikan" type="text" class="form-control datepicker" placeholder="klik untuk memilih tanggal" value="{{ date('Y-m-d', strtotime($data->i_tanggal_tebar_ikan)) }}">
								</div>
								<div class="form-group">
									<label>Jumlah Ikan (dalam ekor)</label>
									<input name="i_jumlah_ikan" type="number" class="form-control" placeholder="contoh: 155" value="{{ $data->i_jumlah_ikan }}">
								</div>
								<div class="form-group">
									<label>Tanggal Panen</label>
									<input name="i_tanggal_panen" type="text" class="form-control datepicker" placeholder="klik untuk memilih tanggal" value="{{ date('Y-m-d', strtotime($data->i_tanggal_panen)) }}">
								</div>
								<div class="form-group">
									<label>Estimasi Hasil Panen (dalam kg)</label>
									<input name="i_estimasi_hasil_panen" type="number" class="form-control" placeholder="contoh: 103" value="{{ $data->i_estimasi_hasil_panen }}">
								</div>
							</div>
						@endif
						</div>
					
					<div class="box box-primary box-flat">
						<div class="box-footer">
							<a href="{{ action('LahanController@detail', $data->lahan_id) }}" class="btn btn-default btn-flat pull-left"><i class="fa fa-arrow-left"></i>&nbsp;&nbsp;Kembali</a>
							<button type="submit" class="btn btn-primary btn-flat pull-right"><i class="fa fa-save"></i>&nbsp;&nbsp;Simpan</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</section>
@endsection

@section('script')
	<!-- bootstrap datepicker -->
	<script src="{{ asset('assets') }}/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	
	<script>
		//Date picker
		$('.datepicker').datepicker({
			autoclose: true,
			format: 'yyyy-mm-dd'
		})
    </script>
@endsection