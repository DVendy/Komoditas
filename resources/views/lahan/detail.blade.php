@php
	$auth= Auth::user();
	$kl_id = Request::input('kl_id');
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
				<a href="{{ action('LahanController@index') }}" class="btn btn-block btn-success btn-flat hidden-xs"><i class="fa fa-map-marker"></i>&nbsp;&nbsp;Semua Lahan</a>
			</small>
		</h1>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<a href="#" class="btn btn-app bg-orange ml-0">
					<i class="fa fa-edit"></i> Rekap Harian
				</a>
				<a href="{{ action('LahanController@addKomoditas', $lahan->id) }}" class="btn btn-app bg-aqua ml-10">
					<i class="fa fa-plus-square"></i> Komoditas
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
							{{ $lahan->name }}
						</p>
						<hr>
						
						<strong><i class="fa fa-book margin-r-5"></i> Luas </strong>
						<p class="text-muted">
							{{ $lahan->luas }} (m<sup>2</sup>)
						</p>
						<hr>
						
						<strong><i class="fa fa-book margin-r-5"></i> Pemilik </strong>
						<p class="text-muted">
							{!! nl2br($lahan->pemilik) !!}
						</p>
						<hr>
						
						<a href="{{ action('LahanController@edit', $lahan->id) }}" class="btn btn-primary btn-block" ><b><i class="fa fa-edit"></i> Ubah info lahan</b></a>
					</div>
				</div>
			</div>
			
			<div class="col-md-8">
				<div class="box box-primary box-flat">
					<div class="box-header with-border">
						<div class="row">
							<div class="col-xs-4 col-sm-3 col-md-2 pr-0">
								<label style="padding: 6px 12px;padding-left: 0;">Komoditas : </label>
							</div>
							<div class="col-xs-8 col-sm-9 col-md-10 pl-0">
								<select class="form-control" id="sel-komoditas">
									@foreach($lahan->komoditasLahans as $kl)
										<option value="kl-{{ $kl->id }}" @if($kl_id == $kl->id) selected @endif>{{ $kl->komoditas->name }}</option>
									@endforeach
								</select>
							</div>
						</div>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					@foreach($lahan->komoditasLahans as $kl)
						@if($kl->type == 'ternak')
							<div class="box-footer no-padding kl-collection" id="kl-{{ $kl->id }}">
								<ul class="nav nav-stacked">
									<li><a href="#">Luas Kandang <span class="pull-right"><b>
										{{ $kl->b_luas_kandang }} m<sup>2</sup></b></span></a></li>
									<li><a href="#">Tahap Persiapan <span class="pull-right"><b>
										{{ $kl->b_tahap_persiapan }} m<sup>2</sup></b></span></a></li>
									<li><a href="#">Tahap Pemeliharaan <span class="pull-right"><b>
										{{ $kl->b_tahap_pemeliharaan }} m<sup>2</sup></b></span></a></li>
									<li><a href="#">Tahap Panen <span class="pull-right"><b>
										{{ $kl->b_tahap_panen }} m<sup>2</sup></b></span></a></li>
									<li><a href="#">Tanggal Masuk Ternak <span class="pull-right"><b>
										{{ date('d F Y', strtotime($kl->b_tanggal_masuk_ternak)) }}</b></span></a></li>
									<li><a href="#">Jumlah Ternak <span class="pull-right"><b>
										{{ $kl->b_jumlah_ternak }} ekor</b></span></a></li>
									<li><a href="#">Tanggal Panen <span class="pull-right badge bg-green"><b>
										{{ date('d F Y', strtotime($kl->b_tanggal_panen)) }}</b></span></a></li>
									<li><a href="#">Estimasi Hasil Panen <span class="pull-right badge bg-green"><b>
										{{ $kl->b_estimasi_hasil_panen }} ekor</b></span></a></li>
								</ul>
								<hr class="mg-0">
								<a href="{{ action('LahanKomoditasController@detail', $kl->id) }}" class="btn bg-orange btn-block mg-10" style="width: auto;"><b><i class="fa fa-edit"></i> Rekap Harian</b></a>
							</div>
						@endif
						
						@if($kl->type == 'tanaman')
							<div class="box-footer no-padding kl-collection" id="kl-{{ $kl->id }}">
								<ul class="nav nav-stacked">
									<li><a href="#">Luas Lahan <span class="pull-right"><b>
										{{ $kl->t_luas_lahan }} m<sup>2</sup></b></span></a></li>
									<li><a href="#">Tahap Persiapan <span class="pull-right"><b>
										{{ $kl->t_tahap_persiapan }} m<sup>2</sup></b></span></a></li>
									<li><a href="#">Tahap Pemeliharaan <span class="pull-right"><b>
										{{ $kl->t_tahap_pemeliharaan }} m<sup>2</sup></b></span></a></li>
									<li><a href="#">Tahap Panen <span class="pull-right"><b>
										{{ $kl->t_tahap_panen }} m<sup>2</sup></b></span></a></li>
									<li><a href="#">Tanggal Mulai Tanam <span class="pull-right"><b>
										{{ date('d F Y', strtotime($kl->t_tanggal_mulai_tanam)) }}</b></span></a></li>
									<li><a href="#">Jumlah Tanaman <span class="pull-right"><b>
										{{ $kl->t_jumlah_tanaman }} pohon</b></span></a></li>
									<li><a href="#">Tanggal Panen <span class="pull-right badge bg-green"><b>
										{{ date('d F Y', strtotime($kl->t_tanggal_panen)) }}</b></span></a></li>
									<li><a href="#">Estimasi Hasil Panen <span class="pull-right badge bg-green"><b>
										{{ $kl->t_estimasi_hasil_panen }} kg</b></span></a></li>
								</ul>
								<hr class="mg-0">
								<a href="{{ action('LahanKomoditasController@detail', $kl->id) }}" class="btn bg-orange btn-block mg-10" style="width: auto;"><b><i class="fa fa-edit"></i> Rekap Harian</b></a>
							</div>
						@endif
						
						@if($kl->type == 'ikan')
							<div class="box-footer no-padding kl-collection" id="kl-{{ $kl->id }}">
								<ul class="nav nav-stacked">
									<li><a href="#">Luas Kolam <span class="pull-right"><b>
										{{ $kl->i_luas_kolam }} m<sup>2</sup></b></span></a></li>
										
									<li><a href="#">Tahap Persiapan <span class="pull-right"><b>
										{{ $kl->i_tahap_persiapan }} m<sup>2</sup></b></span></a></li>
										
									<li><a href="#">Tahap Pemeliharaan <span class="pull-right"><b>
										{{ $kl->i_tahap_pemeliharaan }} m<sup>2</sup></b></span></a></li>
										
									<li><a href="#">Tahap Panen <span class="pull-right"><b>
										{{ $kl->i_tahap_panen }} m<sup>2</sup></b></span></a></li>
										
									<li><a href="#">Tanggal Mulai Tanam <span class="pull-right"><b>
										{{ date('d F Y', strtotime($kl->i_tanggal_tebar_ikan)) }}</b></span></a></li>
										
									<li><a href="#">Jumlah Ikan <span class="pull-right"><b>
										{{ $kl->i_jumlah_ikan }} ekor</b></span></a></li>
										
									<li><a href="#">Tanggal Panen <span class="pull-right badge bg-green"><b>
										{{ date('d F Y', strtotime($kl->i_tanggal_panen)) }}</b></span></a></li>
										
									<li><a href="#">Estimasi Hasil Panen <span class="pull-right badge bg-green"><b>
										{{ $kl->i_estimasi_hasil_panen }} kg</b></span></a></li>
								</ul>
								<hr class="mg-0">
								<a href="{{ action('LahanKomoditasController@detail', $kl->id) }}" class="btn bg-orange btn-block mg-10" style="width: auto;"><b><i class="fa fa-edit"></i> Rekap Harian</b></a>
							</div>
						@endif
					@endforeach
				</div>
			</div>
		</div>
	</section>
@endsection

@section('script')
	<script>		
		function hideAllKomoditas(){
			$('.kl-collection').hide();
		}
		function showKomoditas(){
			var komo_id = $('#sel-komoditas').val();
			// alert(komo_id);
			hideAllKomoditas();
			$('#'+komo_id).show();
		}
		
		$('#sel-komoditas').on('change', function() { //When we change the project, call the function
			showKomoditas();
		});
		
		hideAllKomoditas();
		showKomoditas();
    </script>

@endsection