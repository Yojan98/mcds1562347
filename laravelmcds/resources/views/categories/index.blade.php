@extends('layouts-base.base')


@section('title', 'Módulo Categorias')

@section('content')

				<h1 class="text-center"> <i class="fa fa-user"></i>Módulo Categorias |
				<span class="badge"> {{ $count }} Categorias</span>
			    </h1>
				<hr>
				<a href="{{ url('category/create') }}" class="btn btn-success">
					<i class="fa fa-plus"></i>Categoria
				</a>
				
				<table class="table table-striped table-hover table-bordered">
					<hr>
					<thead>
						<tr>
							<th> ID</th>
							<th> Nombre Categoria </th>
							<th> Acciones</th>
						</tr>
					</thead>
					<tbody>
						@foreach($categories as $cat)

						
						<tr>
							<td>  {{ $cat->id }}</td>
							<td>  {{ $cat->name }}</td>
							<td>
								<a href="{{ url('category/'.$cat->id) }}" class="btn btn-primary"> <i class="fa fa-search"></i> </a>
								<a href="{{ url('category/'.$cat->id.'/edit') }}" class="btn btn-success"> <i class="fa fa-pencil-alt"></i></a>

								<form action="{{ url('category/'.$cat->id)}}" method="post" style="display: inline-block;">
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
							<td colspan="3"> {{ $categories->links() }} </td>
						</tr>
					</tfoot>
				
			   </table>
@endsection			   
			