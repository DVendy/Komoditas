@php
	$auth= Auth::user();
	$komo_tanaman = App\Komoditas::orderBy('type', 'asc')->where('type', 'tanaman')->get();
	$komo_ternak = App\Komoditas::orderBy('type', 'asc')->where('type', 'ternak')->get();
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
			Lahan : {{ $lahan->name	 }}
			<small>
				<a href="{{ action('LahanController@index') }}" class="btn btn-block btn-success btn-flat"><i class="fa fa-map-marker"></i>&nbsp;&nbsp;Semua Lahan</a>
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
								<label for="exampleInputEmail1">Pilih jenis komoditas untuk lahan ini</label>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											@foreach($komo_tanaman as $val)
											<div class="radio">
												<label>
													<input type="radio" name="komoditas_id" value="{{ $val->id }}" onClick="onKomoTypeChange('tanaman');">
													{{ ucfirst($val->type) }} - {{ $val->name }}
												</label>
											</div>
											@endforeach
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											@foreach($komo_ternak as $val)
											<div class="radio">
												<label>
													<input type="radio" name="komoditas_id" value="{{ $val->id }}" onClick="onKomoTypeChange('ternak');">
													{{ ucfirst($val->type) }} - {{ $val->name }}
												</label>
											</div>
											@endforeach
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="box box-primary box-flat" id="detail-tanaman">
						<div class="box-body">
							<div class="form-group">
								<label for="exampleInputEmail1">Luas alokasi - dalam satuan Meter persegi (m<sup>2</sup>)</label>
								<input name="luas" type="number" class="form-control" placeholder="ex: 846.56" step="0.01">
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
					
					<div class="box box-primary box-flat" id="detail-ternak">
						<div class="box-body">
							<div class="form-group">
								<label for="exampleInputEmail1">Jumlah ternak (ekor)</label>
								<input name="jumlah" type="number" class="form-control" placeholder="ex: 120" step="1">
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
	<script>
		$('#detail-tanaman').hide();
		$('#detail-ternak').hide();
		
		function onKomoTypeChange(type){
			if (type == 'tanaman'){
				$('#detail-tanaman').show();
				$('#detail-ternak').hide();
			}
			if (type == 'ternak'){
				$('#detail-tanaman').hide();
				$('#detail-ternak').show();
			}
		}
    </script>
@endsection