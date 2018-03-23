@extends('layouts-base.base')


@section('title', 'Modificar Categoria')

@section('content')

<div class="row">
	<div class="col-md-6 col-md-offset-3">

<h1 class="text-center"> <i class="fa fa-pencil-alt">Modificar Categoria</i></h1>
<hr>
<ul class="breadcrumb">
	<li><a href="{{ url('category') }}">Módulo Categoria</a></li>
	<li class="active">Modificar Categoria</li>
</ul>	
<hr>
@if(count($errors) > 0)
	<div class="alert alert-danger">
		@foreach($errors->all() as $message)
		<li> {{ $message }} </li>
		@endforeach
	</div>
@endif	
<form action="{{ url('category/'.$cat->id) }}" method="post">
	{!! csrf_field() !!}
	{{ method_field('put')}}
	<input type="hidden" name="id" value="{{ $cat->id}}">
	
	<div class="form-group">
		<input type="text" name="name" class="form-control" placeholder="Nombre de Categoria" value="{{ $cat->uname}}">
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