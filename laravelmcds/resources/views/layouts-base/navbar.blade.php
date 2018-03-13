<nav class="navbar navbar-default navbar-static-top navbar-inverse">
            <div class="container">
                <div class="navbar-header">

                    <!-- Collapsed Hamburger -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse" aria-expanded="false">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <!-- Branding Image -->
                    <a class="navbar-brand" href="{{ url('/') }}">
                      <i class="fa fa-home"></i> Inicio
                    </a>
                </div>

                <div class="collapse navbar-collapse" id="app-navbar-collapse">
                    <!-- Left Side Of Navbar -->
                    <ul class="nav navbar-nav">
                        &nbsp;
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="nav navbar-nav navbar-right">
                        <!-- Authentication Links -->
                        @guest
                            <li><a href="{{ route('login') }}"><i class="fa fa-lock"></i>Ingresar</a></li>
                            <li><a href="{{ route('register') }}"><i class="fa fa-address-card"></i>Registrarse</a></li>
                        @else
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true">
                                    {{ Auth::user()->firstname }}  {{ Auth::user()->lastname }}<span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu" role="menu">
                                    <!-- Menu Admin -->
                                    @if(Auth::user()->role == 'Admin')
                                        <li><a href="{{url('user') }}"><i class="fa fa-users"></i> Usuarios </a></li>
                                        <li><a href="{{url('category') }}"><i class="fa fa-book"></i> Categorias </a></li>
                                        <li><a href="{{url('article') }}"><i class="fa fa-copy"></i> Articulos </a></li>
                                    @endif
                                    <!-- Menu Admin -->
                                    @if(Auth::user()->role == 'Editor')
                                        <li><a href="{{url('article') }}"><i class="fa fa-copy"></i> Mis Articulos </a></li>
                                    @endif


                                    <li role="separator" class="divider"></li>

                                    <li>
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            <i class="fa fa-times"></i>Cerrar Sesión
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>