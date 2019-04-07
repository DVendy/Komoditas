@if(session('message'))
@php
	try{
		$m_title = session('message')['title'];
		$m_color = session('message')['color'];
		$m_body = session('message')['body'];
@endphp
	<div class="alert alert-{{ $m_color }} alert-dismissible">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
		<h4><i class="icon fa fa-check"></i> {{ $m_title }}</h4>
		{{ $m_body }}
	</div>
@php
	}catch(Exception $e){}
@endphp
@endif