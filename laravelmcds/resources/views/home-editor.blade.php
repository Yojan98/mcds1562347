@extends('layouts-base.base')

@section('content')

        
            <div class="panel panel-danger">
                <div class="panel-heading text-center"><i class="fa fa-user"></i><strong class="lead  ">EDITOR: </strong></div>

                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="list-group">
                                
                                <div class="list-group-item list-group-item-warning">
                                  <strong>Nombre de Usuario:</strong>  {{ Auth::user()->username}}
                                </div>
                                <br>                                
                                
                                <div class="list-group-item list-group-item-danger">
                                  <strong>Nombre Completo:</strong>  {{ Auth::user()->firstname}} {{ Auth::user()->lastname}}
                                </div>
                                                              
                                <div class="list-group-item list-group-item-default">
                                  <strong>Correo Electrónico:</strong>    {{ Auth::user()->email}} 
                                </div>
                               
                                <div class="list-group-item list-group-item-danger">
                                    <strong>País:</strong>   {{ Auth::user()->country}} 
                                </div>
                                
                                <div class="list-group-item list-group-item-default">
                                  <strong>Número telefónico:</strong>    {{ Auth::user()->phonenumber}} 
                                </div>
                                
                                <div class="list-group-item list-group-item-danger">
                                    <strong>Fecha Nacimiento:</strong>  {{ Auth::user()->birthdate}} 
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <img src="{{ asset(substr(Auth::user()->photo, 7)) }}" class="img-thumbnail" width="200px">          
                        </div>
                </div>
            </div>
        </div>


@endsection
