<?php
	$overview = [];
	$overview['lahan'] = App\Lahan::count();
	$overview['desa'] = App\Desa::count();
	$overview['kordes'] = App\User::where('role', 'kordes')->count();
	
	$komoditas = [];
	foreach(App\Komoditas::orderBy('type', 'desc')->get() as $val){
		$komoditas[$val->type][] = $val;
	}
	
	$hasil_overview = [];
	$hasil_bulan = [];
	
	$query = \DB::select("SELECT komoditas.name, komoditas_id, SUM(b_estimasi_hasil_panen) as 'hasil_panen', DATE_FORMAT(b_tanggal_panen, '%d %M') as 'tanggal_panen' FROM komoditas_lahan LEFT JOIN komoditas ON komoditas_lahan.komoditas_id = komoditas.id WHERE (b_tanggal_panen BETWEEN '2019-04-01 00:00:00.000000' AND '2019-04-30 23:59:59.999999') GROUP BY tanggal_panen, komoditas_id  
ORDER BY `tanggal_panen` ASC");
	foreach($query as $val){
		$hasil_bulan[$val->komoditas_id][] = $val;
	}
	foreach($query as $val){
		$hasil_overview['ternak']['tanggal'][$val->tanggal_panen] = $val->tanggal_panen;
		$hasil_overview['ternak']['komoditas_id'][$val->komoditas_id] = $val->name;
		$hasil_overview['ternak']['data_raw'][$val->name][$val->tanggal_panen] = $val;
	}
	foreach($hasil_overview['ternak']['tanggal'] as $val){
		foreach($hasil_overview['ternak']['komoditas_id'] as $val1){
			if(isset($hasil_overview['ternak']['data_raw'][$val1][$val]))
				$hasil_overview['ternak']['data'][$val][$val1] = $hasil_overview['ternak']['data_raw'][$val1][$val]->hasil_panen*1;
			else
				$hasil_overview['ternak']['data'][$val][$val1] = 0;
		}
	}
	ksort($hasil_overview['ternak']['data']);
	
	$query = \DB::select("SELECT komoditas_id, SUM(t_estimasi_hasil_panen) as 'hasil_panen', DATE_FORMAT(t_tanggal_panen, '%Y-%m-%d') as 'tanggal_panen' FROM komoditas_lahan WHERE (t_tanggal_panen BETWEEN '2019-04-01 00:00:00.000000' AND '2019-04-30 23:59:59.999999') GROUP BY tanggal_panen, komoditas_id ORDER BY komoditas_id, tanggal_panen");
	foreach($query as $val){
		$hasil_bulan[$val->komoditas_id][] = $val;
	}
	
	$query = \DB::select("SELECT komoditas_id, SUM(i_estimasi_hasil_panen) as 'hasil_panen', DATE_FORMAT(i_tanggal_panen, '%Y-%m-%d') as 'tanggal_panen' FROM komoditas_lahan WHERE (i_tanggal_panen BETWEEN '2019-04-01 00:00:00.000000' AND '2019-04-30 23:59:59.999999') GROUP BY tanggal_panen, komoditas_id ORDER BY komoditas_id, tanggal_panen");
	foreach($query as $val){
		$hasil_bulan[$val->komoditas_id][] = $val;
	}
	
	// dd($hasil_bulan);
	// dd($hasil_overview);
	// dd($komoditas);
?>

@extends('base')

@section('title', 'Dashboard')

@section('style')
  <!-- Morris chart -->
  <link rel="stylesheet" href="{{ asset('assets') }}/bower_components/morris.js/morris.css">
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
							<div class="chart tab-pane" id="chart-ternak" style="position: relative; height: 300px;"></div>
							<div class="chart tab-pane" id="chart-ternak" style="position: relative; height: 300px;"></div>
						</div>
					</div>
					<!-- /.nav-tabs-custom -->
				</section>
			</div>
		@foreach($komoditas as $key => $val)
			<div class="row">
				<!-- Left col -->
				<section class="col-lg-12 connectedSortable">
					<!-- Custom tabs (Charts with tabs)-->
					<div class="nav-tabs-custom">
						<!-- Tabs within a box -->
						<ul class="nav nav-tabs pull-right">
							@foreach($val as $i => $t)
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
							@foreach($val as $i => $t)
								<div class="chart tab-pane @if($i == 0) active @endif" id="chart-{{ $t->id }}" style="position: relative; height: 300px;"></div>
							@endforeach
						</div>
					</div>
					<!-- /.nav-tabs-custom -->
				</section>
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
			var chart_ternak = new Morris.Bar({
				element   : 'chart-ternak',
				resize    : true,
				data      : [
						@foreach($hasil_overview['ternak']['data'] as $tanggal => $hasil)
						  { tanggal: '{{ $tanggal }}', 
							@foreach($hasil as $key_hasil => $value_hasil)
							'{{ $key_hasil }}': {{ $value_hasil }},
							@endforeach
						  },
						@endforeach
						],
				xkey      : 'tanggal',
				ykeys     : [
						@foreach($hasil_overview['ternak']['komoditas_id'] as $val)
						'{{ $val }}',
						@endforeach
					],
				labels    : [
						@foreach($hasil_overview['ternak']['komoditas_id'] as $val)
						'{{ $val }}',
						@endforeach
					],
				lineColors: ['#3c8dbc'],
				hideHover : 'auto'
			});
			
			// Bulanan
			@foreach($komoditas as $key => $val)
				@foreach($val as $i => $t)
					@if(isset($hasil_bulan[$t->id]))
					var chart_{{ $t->id }} = new Morris.Bar({
						element   : 'chart-{{ $t->id }}',
						resize    : true,
						data      : [
								@foreach($hasil_bulan[$t->id] as $hasil)
								  { tanggal: '{{ $hasil->tanggal_panen }}', item1: {{ $hasil->hasil_panen }}},
								@endforeach
								],
						xkey      : 'tanggal',
						ykeys     : ['item1'],
						labels    : ['Item 1'],
						lineColors: ['#3c8dbc'],
						hideHover : 'auto'
					});
					@endif
				@endforeach
			@endforeach
			$('a[data-toggle="tab"]').on('shown.bs.tab', function(e) {
			  var target = $(e.target).attr("href") // activated tab

			  switch (target) {
				@foreach($komoditas as $key => $val)
					@foreach($val as $i => $t)
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