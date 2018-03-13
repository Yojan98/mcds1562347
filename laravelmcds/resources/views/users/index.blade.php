@extends('layouts-base.base')


@section('title', 'Módulo Usuarios')

@section('content')

				<h1 class="text-center"> <i class="fa fa-user"></i>Módulo Usuarios |
				<span class="badge"> {{ $count }} Usuarios</span>
			    </h1>
				<hr>
				<a href="{{ url('user/create') }}" class="btn btn-success">
					<i class="fa fa-plus"></i>Usuario
				</a>
				
				<table class="table table-striped table-hover table-bordered">
					<hr>
					<thead>
						<tr>
							<th> Nombre Usuario </th>
							<th> Correo Electronico</th>
							<th> Rol </th>
							<th> Foto </th>
							<th> Acciones</th>
						</tr>
					</thead>
					<tbody>
						@foreach($users as $user)

						
						<tr>
							<td>  {{ $user->username }}</td>
							<td>  {{ $user->email    }}</td>
							<td>  {{ $user->role     }}</td>
							<td> <img src="{{ asset(substr($user->photo, 7 )) }}" width="35px" ></td>
							<td>
								<a href="{{ url('user/'.$user->id) }}" class="btn btn-primary"> <i class="fa fa-search"></i> </a>
								<a href="{{ url('user/'.$user->id.'/edit') }}" class="btn btn-success"> <i class="fa fa-pencil"></i></a>

								<form action="{{ url('user/'.$user->id)}}" method="post" style="display: inline-block;">
									{{ method_field('delete')}}
									{!! csrf_field() !!}
									<button type="button" class="btn btn-danger btn-delete"><i class="fa fa-trash"></i></button>
								</form>

								<!-- <a href="" class="btn btn-danger">  <i class="fa fa-trash"></i> </a> -->
							</td>
						</tr>
						@endforeach
					</tbody>
					<tfoot>
						<tr class="text-center">
							<td colspan="5"> {{ $users->links() }} </td>
						</tr>
					</tfoot>
				
			   </table>
@endsection			   
			