@extends('layouts-base.base')


@section('title', 'Consultar Categoria')

@section('content')

<h1 class="text-center"> <i class="fa fa-search">Consultar Categoria</i></h1>
<hr>
<ul class="breadcrumb">
	<li><a href="{{ url('category') }}">Módulo Categoria</a></li>
	<li class="active">Consultar Categoria</li>
</ul>
<hr>	
<table class="table table-striped table-bordered">
	<tr>
		<th>Id:</th>
		<td>{{ $cat->id }}</td>
	</tr>
	<tr>
		<th>Nombre de Usuario:</th>
		<td>{{ $cat->name }}</td>
	</tr>
	
	<tr>
		<th>Creado:</th>
		<?php 
			\Carbon\Carbon::setLocale(config('app.locale'));
			$hoy = \Carbon\Carbon::now();
			$fca = \Carbon\Carbon::parse($cat->created_at);
		?>
		<td>{{ $fca->diffForHumans($hoy) }}</td>
	

</table>


@endsection