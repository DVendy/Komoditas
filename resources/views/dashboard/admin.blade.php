<?php
	$jenis = ['ternak', 'tanaman', 'ikan'];
	
	$q_date = [];
	$q_date['year'] = Request::input('year');
	$q_date['month'] = Request::input('month');
	if(!$q_date['year'])
		$q_date['year'] = date('Y');
	if(!$q_date['month'])
		$q_date['month'] = date('m');
	$q_date['date_from'] = date_create_from_format('Ymd', $q_date['year'].$q_date['month'].'01')->format('Y-m-d 00:00:00.000000');
	$q_date['date_to'] = date_create_from_format('Ymd', $q_date['year'].$q_date['month'].'01')->format('Y-m-t 23:59:59.999999');
	// dd($q_date);
	
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
	
	$overview = [];
	$overview['lahan'] = App\Lahan::count();
	$overview['desa'] = App\Desa::count();
	$overview['kordes'] = App\User::where('role', 'kordes')->count();
	
	$colors = ['#1abc9c', '#3498db', '#9b59b6', '#34495e', '#f1c40f', '#e74c3c', '#95a5a6'];
	$colors_k = ['ternak' => '#e74c3c', 'tanaman' => '#f1c40f', 'ikan' => '#1abc9c'];
	shuffle($colors);
	
	$komoditas = [];
	foreach(App\Komoditas::orderBy('type', 'desc')->get() as $val){
		$komoditas[$val->type]['data'][] = $val;
	}
	$komoditas['ternak']['satuan'] = 'Ekor';
	$komoditas['tanaman']['satuan'] = 'Kg';
	$komoditas['ikan']['satuan'] = 'Kg';
	
	$hasil_overview = [
		'ternak' => [
			'tanggal' => null,
			'komoditas_id' => null,
			'data_raw' => null,
			'data' => null,
		],
		'tanaman' => [
			'tanggal' => null,
			'komoditas_id' => null,
			'data_raw' => null,
			'data' => null,
		],
		'ikan' => [
			'tanggal' => null,
			'komoditas_id' => null,
			'data_raw' => null,
			'data' => null,
		],
	];
	$hasil_jumlah = [
		'ternak' => null,
		'tanaman' => null,
		'ikan' => null,
	];
	$hasil_bulan = [];
	$hasil_bulan['hasil'] = [];
	$hasil_bulan['jumlah'] = [];
	
	$query = \DB::select("SELECT komoditas.name, komoditas_id, SUM(b_estimasi_hasil_panen) as 'hasil_panen', DATE_FORMAT(b_tanggal_panen, '%d %M') as 'tanggal_panen' FROM komoditas_lahan LEFT JOIN komoditas ON komoditas_lahan.komoditas_id = komoditas.id WHERE (b_tanggal_panen BETWEEN '".$q_date['date_from']."' AND '".$q_date['date_to']."') GROUP BY tanggal_panen, komoditas_id ORDER BY `tanggal_panen` ASC");
	foreach($query as $val){
		if(!isset($hasil_bulan['jumlah'][$val->komoditas_id]))
			$hasil_bulan['jumlah'][$val->komoditas_id] = 0;
		$hasil_bulan['hasil'][$val->komoditas_id][] = $val;
		$hasil_bulan['jumlah'][$val->komoditas_id] += $val->hasil_panen;
	}
	foreach($query as $val){
		$hasil_overview['ternak']['tanggal'][$val->tanggal_panen] = $val->tanggal_panen;
		$hasil_overview['ternak']['komoditas_id'][$val->komoditas_id] = $val->name;
		$hasil_overview['ternak']['data_raw'][$val->name][$val->tanggal_panen] = $val;
	}
	if($hasil_overview['ternak']['tanggal']){
		foreach($hasil_overview['ternak']['tanggal'] as $val){
			foreach($hasil_overview['ternak']['komoditas_id'] as $val1){
				if(isset($hasil_overview['ternak']['data_raw'][$val1][$val]))
					$hasil_overview['ternak']['data'][$val][$val1] = $hasil_overview['ternak']['data_raw'][$val1][$val]->hasil_panen*1;
				else
					$hasil_overview['ternak']['data'][$val][$val1] = 0;
			}
		}
		ksort($hasil_overview['ternak']['data']);
	}
	
	$query = \DB::select("SELECT komoditas.name, komoditas_id, SUM(t_estimasi_hasil_panen) as 'hasil_panen', DATE_FORMAT(t_tanggal_panen, '%d %M') as 'tanggal_panen' FROM komoditas_lahan LEFT JOIN komoditas ON komoditas_lahan.komoditas_id = komoditas.id WHERE (t_tanggal_panen BETWEEN '".$q_date['date_from']."' AND '".$q_date['date_to']."') GROUP BY tanggal_panen, komoditas_id ORDER BY `tanggal_panen` ASC");
	foreach($query as $val){
		if(!isset($hasil_bulan['jumlah'][$val->komoditas_id]))
			$hasil_bulan['jumlah'][$val->komoditas_id] = 0;
		$hasil_bulan['hasil'][$val->komoditas_id][] = $val;
		$hasil_bulan['jumlah'][$val->komoditas_id] += $val->hasil_panen;
	}
	foreach($query as $val){
		$hasil_overview['tanaman']['tanggal'][$val->tanggal_panen] = $val->tanggal_panen;
		$hasil_overview['tanaman']['komoditas_id'][$val->komoditas_id] = $val->name;
		$hasil_overview['tanaman']['data_raw'][$val->name][$val->tanggal_panen] = $val;
	}
	if($hasil_overview['tanaman']['tanggal']){
		foreach($hasil_overview['tanaman']['tanggal'] as $val){
			foreach($hasil_overview['tanaman']['komoditas_id'] as $val1){
				if(isset($hasil_overview['tanaman']['data_raw'][$val1][$val]))
					$hasil_overview['tanaman']['data'][$val][$val1] = $hasil_overview['tanaman']['data_raw'][$val1][$val]->hasil_panen*1;
				else
					$hasil_overview['tanaman']['data'][$val][$val1] = 0;
			}
		}
		ksort($hasil_overview['tanaman']['data']);
	}
	
	$query = \DB::select("SELECT komoditas.name, komoditas_id, SUM(i_estimasi_hasil_panen) as 'hasil_panen', DATE_FORMAT(i_tanggal_panen, '%d %M') as 'tanggal_panen' FROM komoditas_lahan LEFT JOIN komoditas ON komoditas_lahan.komoditas_id = komoditas.id WHERE (i_tanggal_panen BETWEEN '".$q_date['date_from']."' AND '".$q_date['date_to']."') GROUP BY tanggal_panen, komoditas_id ORDER BY `tanggal_panen` ASC");
	foreach($query as $val){
		if(!isset($hasil_bulan['jumlah'][$val->komoditas_id]))
			$hasil_bulan['jumlah'][$val->komoditas_id] = 0;
		$hasil_bulan['hasil'][$val->komoditas_id][] = $val;
		$hasil_bulan['jumlah'][$val->komoditas_id] += $val->hasil_panen;
	}
	foreach($query as $val){
		$hasil_overview['ikan']['tanggal'][$val->tanggal_panen] = $val->tanggal_panen;
		$hasil_overview['ikan']['komoditas_id'][$val->komoditas_id] = $val->name;
		$hasil_overview['ikan']['data_raw'][$val->name][$val->tanggal_panen] = $val;
	}
	if($hasil_overview['ikan']['tanggal']){
		foreach($hasil_overview['ikan']['tanggal'] as $val){
			foreach($hasil_overview['ikan']['komoditas_id'] as $val1){
				if(isset($hasil_overview['ikan']['data_raw'][$val1][$val]))
					$hasil_overview['ikan']['data'][$val][$val1] = $hasil_overview['ikan']['data_raw'][$val1][$val]->hasil_panen*1;
				else
					$hasil_overview['ikan']['data'][$val][$val1] = 0;
			}
		}
		ksort($hasil_overview['ikan']['data']);
	}
	
	// Jumlah ===============================================================================
	$query = \DB::select("SELECT komoditas.name, SUM(b_estimasi_hasil_panen) as 'hasil_panen' FROM komoditas_lahan LEFT JOIN komoditas ON komoditas_lahan.komoditas_id = komoditas.id WHERE (b_tanggal_panen BETWEEN '".$q_date['date_from']."' AND '".$q_date['date_to']."') GROUP BY name");
	foreach($query as $val){
		$hasil_jumlah['ternak'][$val->name] = $val->hasil_panen;
	}
	$query = \DB::select("SELECT komoditas.name, SUM(t_estimasi_hasil_panen) as 'hasil_panen' FROM komoditas_lahan LEFT JOIN komoditas ON komoditas_lahan.komoditas_id = komoditas.id WHERE (t_tanggal_panen BETWEEN '".$q_date['date_from']."' AND '".$q_date['date_to']."') GROUP BY name");
	foreach($query as $val){
		$hasil_jumlah['tanaman'][$val->name] = $val->hasil_panen;
	}
	$query = \DB::select("SELECT komoditas.name, SUM(i_estimasi_hasil_panen) as 'hasil_panen' FROM komoditas_lahan LEFT JOIN komoditas ON komoditas_lahan.komoditas_id = komoditas.id WHERE (i_tanggal_panen BETWEEN '".$q_date['date_from']."' AND '".$q_date['date_to']."') GROUP BY name");
	foreach($query as $val){
		$hasil_jumlah['ikan'][$val->name] = $val->hasil_panen;
	}
	// ======================================================================================
	// dd($hasil_jumlah);
	// dd($hasil_overview);
	// dd($komoditas);
?>

@extends('base')

@section('title', 'Dashboard')

@section('style')
  <!-- Morris chart -->
  <link rel="stylesheet" href="{{ asset('assets') }}/bower_components/morris.js/morris.css">
  
	<style>
		.info-box {
			min-height: 70px;
			margin-bottom: 21px;
		}
		.info-box-content {
			padding: 12px 10px;
			margin-left: 70px;
		}
		.info-box-icon {
			height: 70px;
			width: 70px;
			font-size: 35px;
			line-height: 70px;
		}
	</style>
@stop

@section('bodyClass', 'site-menubar-fold site-menubar-keep')

@section('content')	
	<section class="content-header">
		<h1>
			Dashboard
		</h1>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="info-box">
					<span class="info-box-icon bg-aqua">
						<i class="ion ion-ios-gear-outline"></i>
					</span>
					<div class="info-box-content">
						<span class="info-box-text">Lahan Terdaftar</span>
						<span class="info-box-number">{{ $overview['lahan'] }}
						</span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="info-box">
					<span class="info-box-icon bg-red">
						<i class="fa fa-google-plus"></i>
					</span>
					<div class="info-box-content">
						<span class="info-box-text">Desa Terdaftar</span>
						<span class="info-box-number">{{ $overview['desa'] }}</span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="info-box">
					<span class="info-box-icon bg-yellow">
						<i class="ion ion-ios-people-outline"></i>
					</span>
					<div class="info-box-content">
						<span class="info-box-text">Jumlah Koordinator Desa</span>
						<span class="info-box-number">{{ $overview['kordes'] }}</span>
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
		</div>      
			
		<div class="row">
			<div class="col-lg-4">
				<h3>
					Prediksi Panen
					<small>data chart prediksi panen</small>
				</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12 col-md-6">
				<div class="box box-warning box-solid">
					<div class="box-header with-border">
						<h3 class="box-title"> <i class="fa fa-filter"></i>&nbsp;&nbsp;Filter</h3>

						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
						</div>
						<!-- /.box-tools -->
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<form method="GET" action="{{ action('DashboardController@index') }}">
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<select class="form-control" name="year">
											<option disabled>--Pilih Tahun--</option>
											<option selected>{{ $q_date['year'] }}</option>
										</select>
									</div>
								</div>
								<div class="col-md-5">
									<div class="form-group">
										<select class="form-control" name="month">
											<option disabled>--Pilih Bulan--</option>
											@foreach($months as $m)
											<option value="{{ $m[1] }}" @if($q_date['month'] == $m[1]) selected @endif>{{ $m[0] }}</option>
											@endforeach
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<button type="submit" class="btn btn-block btn-primary"><i class="fa fa-filter"></i>&nbsp;&nbsp;Filter</button>
								</div>
							</div>
						</form>
					</div>
					<!-- /.box-body -->
				</div>
			</div>
		</div>
		<div class="row">
			<!-- Left col -->
			<section class="col-lg-12 connectedSortable">
				<!-- Custom tabs (Charts with tabs)-->
				<div class="nav-tabs-custom">
					<!-- Tabs within a box -->
					<ul class="nav nav-tabs pull-right">
						<li class="active">
							<a href="#chart-ternak" data-toggle="tab">Ternak</a>
						</li>
						<li>
							<a href="#chart-tanaman" data-toggle="tab">Tanaman</a>
						</li>
						<li>
							<a href="#chart-ikan" data-toggle="tab">Ikan</a>
						</li>
						<li class="pull-left header">
							<i class="fa fa-inbox"></i> Master Report
						</li>
					</ul>
					<div class="tab-content no-padding">
						<!-- Morris chart - Sales -->
						<div class="chart tab-pane active" id="chart-ternak" style="position: relative; height: 300px;"></div>
						<div class="chart tab-pane" id="chart-tanaman" style="position: relative; height: 300px;"></div>
						<div class="chart tab-pane" id="chart-ikan" style="position: relative; height: 300px;"></div>
					</div>
				</div>
				<!-- /.nav-tabs-custom -->
			</section>
		</div>
		@foreach($komoditas as $key => $val)
			<div class="row">
				<!-- Left col -->
				<section class="col-lg-8 connectedSortable">
					<!-- Custom tabs (Charts with tabs)-->
					<div class="nav-tabs-custom">
						<!-- Tabs within a box -->
						<ul class="nav nav-tabs pull-right">
							@foreach($val['data'] as $i => $t)
								<li @if($i == 0) class="active" @endif>
									<a href="#chart-{{ $t->id }}" data-toggle="tab">{{ $t->name }}</a>
								</li>
							@endforeach
							<li class="pull-left header">
								<i class="fa fa-inbox"></i> {{ ucfirst($key) }}
							</li>
						</ul>
						<div class="tab-content no-padding">
							<!-- Morris chart - Sales -->
							@foreach($val['data'] as $i => $t)
								<div class="chart tab-pane @if($i == 0) active @endif" id="chart-{{ $t->id }}" style="position: relative; height: 300px;"></div>
							@endforeach
						</div>
					</div>
					<!-- /.nav-tabs-custom -->
				</section>
				<div class="col-lg-4">
				@foreach($val['data'] as $i => $t)
					@if($hasil_jumlah[$key] && array_key_exists($t->name, $hasil_jumlah[$key]))
						@php
							// shuffle($colors);
						@endphp
							<div class="info-box">
								<span class="info-box-icon bg-yellow" style=" background-color: {{ $colors_k[$key] }} !important; ">
									<i class="ion ion-ios-pricetag-outline"></i>
								</span>
								<div class="info-box-content">
									<span class="info-box-text">{{ $t->name }}</span>
									<span class="info-box-number">{{ $hasil_jumlah[$key][$t->name] }} <small>{{ $komoditas[$key]['satuan'] }}</small></span>
								</div>
								<!-- /.info-box-content -->
							</div>
					@endif
				@endforeach
				</div>
			</div>
		@endforeach
	</section>
@endsection

@section('script')
	<!-- Morris.js charts -->
	<script src="{{ asset('assets') }}/bower_components/raphael/raphael.min.js"></script>
	<script src="{{ asset('assets') }}/bower_components/morris.js/morris.min.js"></script>
	
	<script src="{{ asset('js') }}/dashboard.js"></script>
	
	<script>
		$(function (){
			//Master
			@php
				shuffle($colors);
			@endphp
			@foreach($jenis as $j)
				var chart_{{ $j }} = new Morris.Bar({
					element   : 'chart-{{ $j }}',
					resize    : true,
					data      : [
							@if($hasil_overview[$j]['data'])
								@foreach($hasil_overview[$j]['data'] as $tanggal => $hasil)
								  { tanggal: '{{ $tanggal }}', 
									@foreach($hasil as $key_hasil => $value_hasil)
									'{{ $key_hasil }}': {{ $value_hasil }},
									@endforeach
								  },
								@endforeach
							@endif
							],
					xkey      : 'tanggal',
					ykeys     : [
							@if($hasil_overview[$j]['komoditas_id'])
								@foreach($hasil_overview[$j]['komoditas_id'] as $val)
								'{{ $val }}',
								@endforeach
							@endif
						],
					labels    : [
							@if($hasil_overview[$j]['komoditas_id'])
								@foreach($hasil_overview[$j]['komoditas_id'] as $val)
								'{{ $val }}',
								@endforeach
							@endif
						],
					barColors: [
							@if($hasil_overview[$j]['komoditas_id'])
								@php $i=0 @endphp
								@foreach($hasil_overview[$j]['komoditas_id'] as $val)
								'{{ $colors[$i] }}',
								@php $i++ @endphp
								@endforeach
							@endif
						],
					hideHover : 'auto'
				});
			@endforeach
			
			// Bulanan
			@foreach($komoditas as $key => $val)
				@php
					shuffle($colors);
				@endphp
				@foreach($val['data'] as $i => $t)
					@if(isset($hasil_bulan['hasil'][$t->id]))
					var chart_{{ $t->id }} = new Morris.Bar({
						element   : 'chart-{{ $t->id }}',
						resize    : true,
						data      : [
								@foreach($hasil_bulan['hasil'][$t->id] as $hasil)
								  { tanggal: '{{ $hasil->tanggal_panen }}', item1: {{ $hasil->hasil_panen }}},
								@endforeach
								],
						xkey      : 'tanggal',
						ykeys     : ['item1'],
						labels    : ['Jumlah Panen'],
						barColors: ['{{ $colors_k[$key] }}'],
						hideHover : 'auto'
					});
					@endif
				@endforeach
			@endforeach
			$('a[data-toggle="tab"]').on('shown.bs.tab', function(e) {
			  var target = $(e.target).attr("href") // activated tab

			  switch (target) {
				@foreach($komoditas as $key => $val)
					@foreach($val['data'] as $i => $t)
					case "#chart-{{ $t->id }}":
					  chart_{{ $t->id }}.redraw();
					  $(window).trigger('resize');
					  break;
					@endforeach
				@endforeach
			  }
			});
		});
	</script>
@endsection