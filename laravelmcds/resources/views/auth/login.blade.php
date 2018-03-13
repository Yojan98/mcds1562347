@extends('layouts-base.base')

@section('content')
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel-heading"><i class="fa fa-lock fa-2x"></i> <strong>INGRESO</strong></div>

                <div class="panel-body">
                    @if(count($errors) > 0)
                    <div class="alert alert-danger">
                        @foreach($errors->all() as $message)
                        <li> {{ $message }} </li>
                        @endforeach
                    </div>
                    @endif  
                    <form method="POST" action="{{ route('login') }}">
                        {{ csrf_field() }}

                        <div class="form-group">                            
                            <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" placeholder="Correo Electrónico" required autofocus>

                       
                        </div>

                        <div class="form-group">
                          <input id="password" type="password" class="form-control" name="password" placeholder="Contraseña" required>


                        </div>

                        <div class="form-group">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Recordarme
                                    </label>
                            </div>
                        </div>

                        <div class="form-group">
                                <button type="submit" class="btn btn-primary">
                                    Ingresar
                                </button>

                                <a class="btn btn-link" href="{{ route('password.request') }}">
                                    ¿Olvido su contraseña?
                                </a>
                            </div>
                    </form>
                </div>
            </div>
        </div>     
    </div>    
@endsection
