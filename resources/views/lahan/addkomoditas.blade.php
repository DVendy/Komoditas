@php
	$auth= Auth::user();
	$lahan_komoditas_ids = App\KomoditasLahan::where('lahan_id', $lahan->id)->pluck('komoditas_id');
	
	$komo_ternak = App\Komoditas::orderBy('type', 'asc')->where('type', 'ternak')->whereNotIn('id', $lahan_komoditas_ids)->get();
	$komo_tanaman = App\Komoditas::orderBy('type', 'asc')->where('type', 'tanaman')->whereNotIn('id', $lahan_komoditas_ids)->get();
	$komo_ikan = App\Komoditas::orderBy('type', 'asc')->where('type', 'ikan')->whereNotIn('id', $lahan_komoditas_ids)->get();
	$fase = App\Fase::all();
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
		<h1>
			Tambah Komoditas Untuk Lahan : {{ $lahan->name	 }}
			<small>
				<a href="{{ action('LahanController@index') }}" class="btn btn-block btn-success btn-flat hidden-xs"><i class="fa fa-map-marker"></i>&nbsp;&nbsp;Semua Lahan</a>
			</small>
		</h1>
	</section>
	<!-- Main content -->
	<section class="content">
		<form action="{{ action('LahanController@doAddKomoditas', $lahan->id) }}" method="POST" role="form">
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
						<div class="box-body">
							<div class="form-group">
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label>Pilih jenis komoditas untuk lahan ini</label>
											<select class="form-control" onchange="onKomoTypeChangeSelect(this)" name="komoditas_id">
													<option disabled selected>---Pilih Jenis Komoditas---</option>
													<option disabled style=" font-weight: bold; ">---Ternak---</option>
												@foreach($komo_ternak as $val)
													<option value="{{ $val->id }}" type="ternak">{{ $val->name }}</option>
												@endforeach
													<option disabled style=" font-weight: bold; ">---Tanaman---</option>
												@foreach($komo_tanaman as $val)
													<option value="{{ $val->id }}" type="tanaman">{{ $val->name }}</option>
												@endforeach
													<option disabled style=" font-weight: bold; ">---Ikan---</option>
												@foreach($komo_ikan as $val)
													<option value="{{ $val->id }}" type="ikan">{{ $val->name }}</option>
												@endforeach
											</select>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="box box-primary box-flat" id="detail-ternak">
						<div class="box-body">
							<div class="form-group">
								<label>Luas Kandang (dalam m<sup>2</sup>)</label>
								<input name="b_luas_kandang" type="number" class="form-control" placeholder="contoh: 574">
							</div>
							<div class="form-group">
								<label>Tahap Persiapan (dalam m<sup>2</sup>)</label>
								<input name="b_tahap_persiapan" type="number" class="form-control" placeholder="contoh: 312">
							</div>
							<div class="form-group">
								<label>Tahap Pemeliharaan (dalam m<sup>2</sup>)</label>
								<input name="b_tahap_pemeliharaan" type="number" class="form-control" placeholder="contoh: 112">
							</div>
							<div class="form-group">
								<label>Tahap Panen (dalam m<sup>2</sup>)</label>
								<input name="b_tahap_panen" type="number" class="form-control" placeholder="contoh: 23">
							</div>
							<div class="form-group">
								<label>Tanggal Masuk Ternak</label>
								<input name="b_tanggal_masuk_ternak" type="text" class="form-control datepicker" placeholder="klik untuk memilih tanggal">
							</div>
							<div class="form-group">
								<label>Jumlah Ternak (dalam ekor)</label>
								<input name="b_jumlah_ternak" type="number" class="form-control" placeholder="contoh: 155">
							</div>
							<div class="form-group">
								<label>Tanggal Panen</label>
								<input name="b_tanggal_panen" type="text" class="form-control datepicker" placeholder="klik untuk memilih tanggal">
							</div>
							<div class="form-group">
								<label>Estimasi Hasil Panen (dalam ekor)</label>
								<input name="b_estimasi_hasil_panen" type="number" class="form-control" placeholder="contoh: 103">
							</div>
						</div>
					</div>
					
					<div class="box box-primary box-flat" id="detail-tanaman">
						<div class="box-body">
							<div class="form-group">
								<label>Luas Lahan (dalam m<sup>2</sup>)</label>
								<input name="t_luas_lahan" type="number" class="form-control" placeholder="contoh: 574">
							</div>
							<div class="form-group">
								<label>Tahap Persiapan (dalam m<sup>2</sup>)</label>
								<input name="t_tahap_persiapan" type="number" class="form-control" placeholder="contoh: 312">
							</div>
							<div class="form-group">
								<label>Tahap Pemeliharaan (dalam m<sup>2</sup>)</label>
								<input name="t_tahap_pemeliharaan" type="number" class="form-control" placeholder="contoh: 112">
							</div>
							<div class="form-group">
								<label>Tahap Panen (dalam m<sup>2</sup>)</label>
								<input name="t_tahap_panen" type="number" class="form-control" placeholder="contoh: 23">
							</div>
							<div class="form-group">
								<label>Tanggal Mulai Tanam</label>
								<input name="t_tanggal_mulai_tanam" type="text" class="form-control datepicker" placeholder="klik untuk memilih tanggal">
							</div>
							<div class="form-group">
								<label>Jumlah Tanaman (dalam pohon)</label>
								<input name="t_jumlah_tanaman" type="number" class="form-control" placeholder="contoh: 155">
							</div>
							<div class="form-group">
								<label>Tanggal Panen</label>
								<input name="t_tanggal_panen" type="text" class="form-control datepicker" placeholder="klik untuk memilih tanggal">
							</div>
							<div class="form-group">
								<label>Estimasi Hasil Panen (dalam kg)</label>
								<input name="t_estimasi_hasil_panen" type="number" class="form-control" placeholder="contoh: 103">
							</div>
						</div>
					</div>
					
					<div class="box box-primary box-flat" id="detail-ikan">
						<div class="box-body">
							<div class="form-group">
								<label>Luas Kolam (dalam m<sup>2</sup>)</label>
								<input name="i_luas_kolam" type="number" class="form-control" placeholder="contoh: 574">
							</div>
							<div class="form-group">
								<label>Tahap Persiapan (dalam m<sup>2</sup>)</label>
								<input name="i_tahap_persiapan" type="number" class="form-control" placeholder="contoh: 312">
							</div>
							<div class="form-group">
								<label>Tahap Pemeliharaan (dalam m<sup>2</sup>)</label>
								<input name="i_tahap_pemeliharaan" type="number" class="form-control" placeholder="contoh: 112">
							</div>
							<div class="form-group">
								<label>Tahap Panen (dalam m<sup>2</sup>)</label>
								<input name="i_tahap_panen" type="number" class="form-control" placeholder="contoh: 23">
							</div>
							<div class="form-group">
								<label>Tanggal Tebar Ikan</label>
								<input name="i_tanggal_tebar_ikan" type="text" class="form-control datepicker" placeholder="klik untuk memilih tanggal">
							</div>
							<div class="form-group">
								<label>Jumlah Ikan (dalam ekor)</label>
								<input name="i_jumlah_ikan" type="number" class="form-control" placeholder="contoh: 155">
							</div>
							<div class="form-group">
								<label>Tanggal Panen</label>
								<input name="i_tanggal_panen" type="text" class="form-control datepicker" placeholder="klik untuk memilih tanggal">
							</div>
							<div class="form-group">
								<label>Estimasi Hasil Panen (dalam kg)</label>
								<input name="i_estimasi_hasil_panen" type="number" class="form-control" placeholder="contoh: 103">
							</div>
						</div>
					</div>
					
					<div class="box box-primary box-flat">
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
	<!-- bootstrap datepicker -->
	<script src="{{ asset('assets') }}/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	
	<script>
		$('#detail-ternak').hide();
		$('#detail-tanaman').hide();
		$('#detail-ikan').hide();
		
		function onKomoTypeChangeSelect(selectObject){
			var k_type = selectObject.options[selectObject.selectedIndex].getAttribute('type');
			
			$('#detail-ternak').hide();
			$('#detail-tanaman').hide();
			$('#detail-ikan').hide();
			
			$('#detail-'+k_type).show();
		}

		//Date picker
		$('.datepicker').datepicker({
			autoclose: true,
			format: 'yyyy-mm-dd'
		})
    </script>
@endsection