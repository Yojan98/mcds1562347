@extends('layouts-base.base')


@section('title', 'Adiccionar Usuarios')

@section('content')

<div class="row">
	<div class="col-md-6 col-md-offset-3">

<h1 class="text-center"> <i class="fa fa-user">Adiccionar Usuarios</i></h1>
<hr>
<ul class="breadcrumb">
	<li><a href="{{ url('user') }}">Módulo Uusuario</a></li>
	<li class="active">Insertar Usuario</li>
</ul>
<hr>
@if(count($errors) > 0)
	<div class="alert alert-danger">
		@foreach($errors->all() as $message)
		<li> {{ $message }} </li>
		@endforeach
	</div>
@endif	
<form action="{{ url('user') }}" method="post" enctype="multipart/form-data">
	{!! csrf_field() !!}
	
	<div class="form-group">
		<input type="text" name="username" class="form-control" placeholder="Nombre de usuario" value="{{ old('username')}}">
	</div>

	<div class="form-group">
		<input type="text" name="firstname" class="form-control" placeholder="Nombres" value="{{ old('firstname')}}">
	</div>

	<div class="form-group">
		<input type="text" name="lastname" class="form-control" placeholder="Apellidos" value="{{ old('lastname')}}">
	</div>

	<div class="form-group">
		<input type="text" name="email" class="form-control" placeholder="Correo Eléctronico" value="{{ old('email')}}">
	</div>

	<div class="form-group">
		<small>Seleccione una foto </small>
		<input type="file" name="photo" accept="image/*"  class="form-control">
		
	</div>

	<div class="form-group">
		<select name="role" class="form-control">
			<option value="">Seleccione un rol</option>
			<option value="Admin" {{old('role') == 'Admin' ? 'selected' : '' }}>Administrador</option>
			<option value="Editor" {{old('role') == 'Editor' ? 'selected' : '' }}>Editor </option>
		</select>
	</div>

	<div class="form-group">
		<input type="password" name="password" class="form-control" placeholder="Contraseña">
	</div>

	<div class="form-group">
		<input type="password" name="confirm_password" class="form-control" placeholder="Confirmar contraseña">
	</div>

	<div class="form-group">
		<input type="color" name="colortheme" class="form-control" placeholder="Color" value="{{ old('colortheme')}}">
		<small>El color debe estar en hexadecimal</small>
	</div>

	<div class="form-group">
		<input type="text" name="country" class="form-control" placeholder="País" value="{{ old('country')}}">
	</div>

	<div class="form-group">
		<input type="text" name="phonenumber" class="form-control" placeholder="Número Telefónico" value="{{ old('phonenumber')}}">
	</div>

	<div class="form-group">
		<input type="text" name="birthdate" class="form-control" placeholder="Fecha Nacimiento" value="{{ old('phonenumber')}}">
	</div>

	<div class="form-group">
	<button type="submit" class="btn btn-success">
			<i class="fa fa-save"></i>Guardar

	</button>

	<button type="reset" class="btn btn-default">
			<i class="fa fa-repeat"></i>Limpiar

	</button>
</form>
</div>
</div>

@endsection