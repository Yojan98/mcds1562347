@extends('layouts-base.base')


@section('title', 'Adiccionar Categorias')

@section('content')

<div class="row">
	<div class="col-md-6 col-md-offset-3">

<h1 class="text-center"> <i class="fa fa-user">Adiccionar Categorias</i></h1>
<hr>
<ul class="breadcrumb">
	<li><a href="{{ url('category') }}">Módulo Categorias</a></li>
	<li class="active">Insertar Categoria</li>
</ul>
<hr>
@if(count($errors) > 0)
	<div class="alert alert-danger">
		@foreach($errors->all() as $message)
		<li> {{ $message }} </li>
		@endforeach
	</div>
@endif	
<form action="{{ url('category') }}" method="post" >
	{!! csrf_field() !!}
	
	<div class="form-group">
		<input type="text" name="name" class="form-control" placeholder="Nombre de categoria" value="{{ old('name')}}">
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