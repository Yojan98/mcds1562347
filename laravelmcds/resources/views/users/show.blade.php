@extends('layouts-base.base')


@section('title', 'Consultar Usuarios')

@section('content')

<h1 class="text-center"> <i class="fa fa-search">Consultar Usuarios</i></h1>
<hr>
<ul class="breadcrumb">
	<li><a href="{{ url('user') }}">Módulo Usuario</a></li>
	<li class="active">Consultar Usuario</li>
</ul>
<hr>	
<table class="table table-striped table-bordered">
	<tr>
		<th>Id:</th>
		<td>{{ $user->id }}</td>
	</tr>
	<tr>
		<th>Nombre de Usuario:</th>
		<td>{{ $user->username }}</td>
	</tr>
	<tr>
		<th>Nombre Completo:</th>
		<td>{{ $user->firstname }} {{ $user->lastname}}</td>
	</tr>
	<tr>
		<th>Correo Electrónico:</th>
		<td>{{ $user->email }}</td>
	</tr>
	<tr>
		<th>Rol:</th>
		<td>{{ $user->role }}</td>
	</tr>
	<tr>
		<th>Foto:</th>
		<td><img src="{{ asset(substr($user->photo, 7)) }}" width="96px" data-img="{{ asset(substr($user->photo, 7)) }}" style="cursor: zoom-in;"></td>
	</tr>
	<tr>
		<th>Color:</th>
		<td><button class="btn" style="background-color:{{ $user->colortheme }}; color: white;"><i class="fa fa-paint-brush"></i></button></td>
	</tr>
	<tr>
		<th>País:</th>
		<td>{{ $user->country }}</td>
	</tr>
	<tr>
		<th>Número Telefónico:</th>
		<td>{{ $user->phonenumber }}</td>
	</tr>
	<tr>
		<th>Fecha Nacimiento:</th>
		<?php 
			\Carbon\Carbon::setLocale(config('app.locale'));
			$hoy = \Carbon\Carbon::now();
			$fna = \Carbon\Carbon::parse($user->birthdate);
		?>
		<td> {{ $user->birthdate }} | {{ $hoy->diffInYears($fna) }} Años</td>
	</tr>
	<tr>
		<th>Creado:</th>
		<?php 
			$fca = \Carbon\Carbon::parse($user->created_at);
		?>
		<td>{{ $fca->diffForHumans($hoy) }}</td>
	</tr>

</table>


@endsection