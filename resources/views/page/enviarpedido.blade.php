<!DOCTYPE html>
<html>
<style>
	body {
		font-family: Helvetica, sans-serif;
		color:#494949;
	}

	ul {
		list-style: none;
	}

	li{
		padding: 5px 0;
	}

	div{
		background-color: #F8F8F8;
		width: 85%
		border-radius:20px;
		padding: 1rem 2rem;
	}
</style>
<body>

	<h2>Comindex</h2>
	<h3>Solicitud de presupuesto</h3>
	<p>Enviado desde la web </p>
	<br>
	<h4>Datos del Cliente</h4>
	<ul>
		<li>Nombre: {{ $nombre }}</li>
		<li>Localidad: {{ $localidad }}</li>
		<li>Correo: {{ $email }}</li>
		<li>Teléfono: {{ $telefono }}</li>
	</ul>
	<br>
	<h3>Lista de Productos</h3>
			@if(Cart::count() > 0)

		<table border="1">

			<thead>

				<tr>

					<th>Nombre</th>

					<th>Código</th>

					<th>Cantidad</th>

				</tr>

			</thead>

			<tbody>



				@foreach(Cart::content()  as $row)

				<tr>

					<td>{{ $row->name }}</td>

					<td>{{ $row->options->code }}</td>

					<td>{{ $row->qty }}</td>

				</tr>

				@endforeach

			</tbody>

		</table>

		@endif

		<h4>Mensaje:</h4>
		<p>{{ $mensaje }}</p>

</body>
</html>