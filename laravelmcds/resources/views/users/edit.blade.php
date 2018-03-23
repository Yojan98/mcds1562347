@extends('layouts-base.base')


@section('title', 'Modificar Usuarios')

@section('content')

<div class="row">
	<div class="col-md-6 col-md-offset-3">

<h1 class="text-center"> <i class="fa fa-pencil-alt">Modificar Usuarios</i></h1>
<hr>
<ul class="breadcrumb">
	<li><a href="{{ url('user') }}">Módulo Uusuario</a></li>
	<li class="active">Modificar Usuario</li>
</ul>	
<hr>
@if(count($errors) > 0)
	<div class="alert alert-danger">
		@foreach($errors->all() as $message)
		<li> {{ $message }} </li>
		@endforeach
	</div>
@endif	
<form action="{{ url('user/'.$user->id) }}" method="post" enctype="multipart/form-data">
	{!! csrf_field() !!}
	{{ method_field('put')}}
	<input type="hidden" name="id" value="{{ $user->id}}">
	
	<div class="form-group">
		<input type="text" name="username" class="form-control" placeholder="Nombre de usuario" value="{{ $user->username}}">
	</div>

	<div class="form-group">
		<input type="text" name="firstname" class="form-control" placeholder="Nombres" value="{{ $user->firstname}}">
	</div>

	<div class="form-group">
		<input type="text" name="lastname" class="form-control" placeholder="Apellidos" value="{{ $user->lastname}}">
	</div>

	<div class="form-group">
		<input type="text" name="email" class="form-control" placeholder="Correo Eléctronico" value="{{ $user->email}}">
	</div>

	<div class="form-group">
		<small>Seleccione una foto </small>
		<input type="file" name="photo" accept="image/*"  class="form-control">
		
	</div>

	<div class="form-group">
		<select name="role" class="form-control">
			<option value="">Seleccione un rol</option>
			<option value="Admin" {{$user->role == 'Admin' ? 'selected' : '' }}>Administrador</option>
			<option value="Editor" {{$user->role == 'Editor' ? 'selected' : '' }}>Editor </option>
		</select>
	</div>

	<div class="form-group">
		<input type="color" name="colortheme" class="form-control" placeholder="Color" value="{{ $user->colortheme}}">
		<small>El color debe estar en hexadecimal</small>
	</div>

	<div class="form-group">
		<input type="text" name="country" class="form-control" placeholder="País" value="{{ $user->country}}">
	</div>

	<div class="form-group">
		<input type="text" name="phonenumber" class="form-control" placeholder="Número Telefónico" value="{{ $user->phonenumber}}">
	</div>

	<div class="form-group">
		<input type="text" name="birthdate" class="form-control" placeholder="Fecha Nacimiento" value="{{ $user->birthdate}}">
	</div>

	<div class="form-group">
	<button type="submit" class="btn btn-success">
			<i class="fa fa-save"></i>Modificar

	</button>

	<button type="reset" class="btn btn-default">
			<i class="fa fa-repeat"></i>Limpiar

	</button>
</form>
</div>
</div>

@endsection