<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
	<title>@yield('title')</title>
	<link rel="stylesheet" href="{{ asset('css/app.css')}}">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
</head>
<body>
	@include('layouts-base.navbar')
	
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				@yield('content')
			</div>
		</div>
	</div>
	<script src="{{ asset('js/app.js') }}"></script>
	<script src="https://unpkg.com/sweetalert2"></script>
	<script>
		$(document).ready(function() {
			@if(session('status'))
				swal('Felicitaciones!','{{ session('status') }}','success');
			@endif	
			/* ---------------------------------------------*/
			$('table').on('click', 'img[data-img]', function(event) {
				event.preventDefault();
				$ui = $(this).attr('data-img');
				swal({
					imageUrl: $ui
				});
			});
			/* ---------------------------------------------*/
			$('table').on('click', '.btn-delete', function(event) {
				event.preventDefault();
				swal({
					title: 'Esta seguro ?',
					text:  "Realmente desea eliminar este registro ?",
					type:  'warning',
					showCancelButton: true,
					cancelButtonColor: '#d33'
				}).then((result) => {
					if (result.value) {
						$(this).parent().submit();
					}

				});
			});
		});
	</script>

</body>
</html>