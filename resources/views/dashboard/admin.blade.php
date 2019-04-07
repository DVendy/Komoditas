<?php
	$overview = [];
	$overview['lahan'] = App\Lahan::count();
	$overview['desa'] = App\Desa::count();
	$overview['kordes'] = App\User::where('role', 'kordes')->count();
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
			<section class="col-lg-7 connectedSortable">
				<!-- Custom tabs (Charts with tabs)-->
				<div class="nav-tabs-custom">
					<!-- Tabs within a box -->
					<ul class="nav nav-tabs pull-right">
						<li class="active">
							<a href="#revenue-chart" data-toggle="tab">Area</a>
						</li>
						<li>
							<a href="#sales-chart" data-toggle="tab">Donut</a>
						</li>
						<li class="pull-left header">
							<i class="fa fa-inbox"></i> Sales
						</li>
					</ul>
					<div class="tab-content no-padding">
						<!-- Morris chart - Sales -->
						<div class="chart tab-pane active" id="revenue-chart" style="position: relative; height: 300px;"></div>
						<div class="chart tab-pane" id="sales-chart" style="position: relative; height: 300px;"></div>
					</div>
				</div>
				<!-- /.nav-tabs-custom -->
			</div>
		</div>
	</section>
@endsection

@section('script')
	<!-- Morris.js charts -->
	<script src="{{ asset('assets') }}/bower_components/raphael/raphael.min.js"></script>
	<script src="{{ asset('assets') }}/bower_components/morris.js/morris.min.js"></script>
	
	<script src="{{ asset('js') }}/dashboard.js"></script>
	
	<script>
		$(function (){
			var data = [
				  { tanggal: '2019-01-01', item1: 2666},
				  { tanggal: '2019-01-02', item1: 2778},
				  { tanggal: '2019-01-03', item1: 4912},
				  { tanggal: '2019-01-04', item1: 3767},
				  { tanggal: '2019-01-05', item1: 6810},
				  { tanggal: '2019-01-06', item1: 5670},
				  { tanggal: '2019-01-07', item1: 4820},
				  { tanggal: '2019-01-08', item1: 15073},
				  { tanggal: '2019-01-09', item1: 10687},
				  { tanggal: '2019-01-10', item1: 8432}
				];
				
			chart('revenue-chart', data);
		});
	</script>
@endsection