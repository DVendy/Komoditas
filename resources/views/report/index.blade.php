<?php
	$years = ['2019'];
	$months = array(
		['January', '01'],
		['February', '02'],
		['March', '03'],
		['April', '04'],
		['May', '05'],
		['June', '06'],
		['July', '07'],
		['August', '08'],
		['September', '09'],
		['October', '10'],
		['November', '11'],
		['December', '12']
	);
	$cur_month = date('m');
	
	$kabupatens = App\Kabupaten::with(['kecamatan'])->get();
	// dd($kabupatens);
?>

@extends('base')

@section('title', 'Report')

@section('style')
@stop

@section('bodyClass', 'site-menubar-fold site-menubar-keep')

@section('content')	
	<section class="content-header">
		<h1>
			Report
		</h1>
	</section>
	<!-- Main content -->
	<section class="content">
			<div class="row">
				<div class="col-md-8">
		@include('alert')
						</div>
						</div>
		<div class="row">
			<div class="col-md-12 col-lg-8">
				<div class="box box-warning">
					<div class="box-header with-border">
						<h3 class="box-title">Prediksi Panen Harian</h3>
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
						</div>
						<!-- /.box-tools -->
					</div>
					<!-- /.box-header -->
					<div class="box-body" style="">
						<div class="row">
							<div class="col-md-12">
								<label>Kecamatan</label>
							</div>
						</div>
						<div class="row">
							<form method="GET" action="{{ action('ReportController@lahanKecamatan') }}">
								<div class="col-md-6">
									<div class="form-group">
										<select class="form-control" name="kecamatan_id">
											<option selected disabled>--Pilih Kecamatan--</option>
											@foreach($kabupatens as $k)
												<option disabled style=" font-weight: bold; ">---{{ $k->name }}---</option>
												@foreach($k->kecamatan as $e)
													<option value="{{ $e->id }}">{{ $e->name }}</option>
												@endforeach
											@endforeach
										</select>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<select class="form-control" name="year">
											<option disabled>--Pilih Tahun--</option>
											<option selected>{{ $years[0] }}</option>
										</select>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<select class="form-control" name="month">
											<option disabled>--Pilih Bulan--</option>
											@foreach($months as $m)
											<option value="{{ $m[1] }}" @if($cur_month == $m[1]) selected @endif>{{ $m[0] }}</option>
											@endforeach
										</select>
									</div>
								</div>
								<div class="col-md-2">
									<button type="submit" class="btn btn-block btn-primary"><i class="fa fa-file-excel-o"></i>&nbsp;&nbsp;Export</button>
								</div>
							</form>
						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
		</div>
	</section>
@endsection

@section('script')
@endsection