@extends('base')

@section('title', 'Admin')

@section('style')
@endsection

@section('content')
	<section class="content-header">
		<h1>
			Admin
			<small>
				<a href="{{ action('AdminController@create') }}" class="btn btn-block btn-success btn-flat"><i class="fa fa-user-plus"></i> Tambah Admin</a>
			</small>
		</h1>
	</section>
	<!-- Main content -->
	<section class="content">
	
	</section>
@endsection

@section('script')
@endsection