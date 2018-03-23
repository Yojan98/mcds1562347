<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Reporte PDF</title>
	<style>
		body{
			font-family: Helvetica;
			
		}
		table {
			border-collapse: collapse;			
		}
		table th,
		table td {
			font-size: 14px !important;
		}
		table th {
			background-color: gray;
			color: white;
			text-align: center
		}
		table td {
			border: 1px solid silver;
			padding: 10px;
		}
	</style>
</head>
<body>
	

<table>
	<thead>
		<tr>
			<th> ID </th>
			<th> Nombre Completo </th>
			<th> Correo Electrónico </th>
			<th> Rol </th>
			<th> País </th>
			<th> Teléfono </th>
			<th> Fecha Nacimiento </th>

		</tr>
	</thead>
	@foreach($users as $user)
		<tr>
			<td> {{ $user->id }} </td>
			<td> {{ $user->firstname }} {{ $user->lastname }} </td>
			<td> {{ $user->email }} </td>
			<td> {{ $user->role }} </td>
			<td> {{ $user->country }} </td>
			<td> {{ $user->phonenumber }} </td>
			<td> {{ $user->birthdate }} </td>
			
		</tr>
		@endforeach
</table>
</body>
</html>