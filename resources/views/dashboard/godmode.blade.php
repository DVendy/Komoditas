<?php
?>

@extends('base')

@section('title', 'Dashboard')

@section('style')
@stop

@section('bodyClass', 'site-menubar-fold site-menubar-keep')

@section('content')	
	<section class="content-header">
		@include('alert')
		<h1>
			GOD MODE
		</h1>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-md-5 col-sm-12">
				<a class="btn btn-block btn-social btn-dropbox" href="#" onclick="confirmation('Clear Data?', '{{ action('DashboardController@clearData') }}')">
					<i class="fa fa-edit"></i> <b>Clear Data</b>
				</a>
			</div>
		</div>
	</section>
	
@endsection

@section('script')
@endsection