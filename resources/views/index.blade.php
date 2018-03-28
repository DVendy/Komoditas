@extends('base')

@section('title', 'Dashboard')

@section('style')
	<link rel="stylesheet" href="{{ asset('/') }}global/vendor/datatables-bootstrap/dataTables.bootstrap.css">
	<link rel="stylesheet" href="{{ asset('/') }}global/vendor/datatables-fixedheader/dataTables.fixedHeader.css">
	<link rel="stylesheet" href="{{ asset('/') }}global/vendor/datatables-responsive/dataTables.responsive.css">
	<link rel="stylesheet" href="{{ asset('/') }}assets/examples/css/uikit/modals.css">
@stop

@section('bodyClass', 'site-menubar-fold site-menubar-keep')

@section('content')	
@endsection

@section('script')
@endsection