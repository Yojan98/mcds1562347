@extends('layouts-base.base')
@section('title', 'Bienvenidos Laravel')
@section('content')
    <h1> Bienvenidos LARAVEL</h1>
    <p class="lead">
        Especialización Tecnológica en Metodologías de Calidad para el desarrollo de software
    </p>
    <hr>
    <div class="row">
        <div class="col-md-12">
        	<div class="row">
        	@foreach($arts as $art)
        		<div class="col-md-4">
        		<div class="thumbnail">
        			<img src="{{ asset(substr($art->image, 7)) }}">
        			<div class="caption">
        				<h3> {{ $art->name }}</h3>
        				<small class="label label-primary"> {{ $art->category->name }} </small>
        				<p>
        					{{ $art->content}}
        				</p>
        				<small class="label label-danger"> {{ $art->user->username }}</small>
        				</div>
        			</div>
        		</div>
            @endforeach
        </div>
    </div>  
</div>
@endsection