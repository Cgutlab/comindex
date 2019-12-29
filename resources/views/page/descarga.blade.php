<!DOCTYPE html>
<html lang="es">
<head>
	
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    @foreach ($metadatos as $metadato)
	    <meta name="description" content="{{ $metadato->description }}">
	    <meta name="keyword" content="{{ $metadato->keyword }}">
   	@endforeach
	<title>Comindex ~ Descargas</title>
	@include('page.template.links')
	<link rel="stylesheet" href="{{ asset('css/descarga.css') }}">
</head>
<body>
	@include('page.template.header')
<main class="descarga">
	<div class="banner">
		<img src="{{ asset('images/banners/'.$portada->image) }}" alt="">
		<div class="fs32 blanco bold texto">{!! $portada->title !!}</div>
	</div>
	<div class="container mt70 mb70">
		<div class="row">
			@foreach ($descargas as $descarga)
				<div class="col s12 m6 l3">
					<div class="imagen">
						<img src="{{ asset('images/descargas/'.$descarga->image) }}" alt="">
						<img class="esquina" src="{{ asset('images/esquina.png') }}" alt="">
					</div>
					<div class="texto centrado bold gris-oscuro fs22 center-align">
						{!! $descarga->title !!}
					</div>
					<div class="botones mt10 mb20">
						<span><a href="{{ asset('images/descargas/'.$descarga->route) }}" download=""><i class="material-icons">file_download</i></a></span>
						<span><a href="{{ asset('images/descargas/'.$descarga->route) }}" target="_blank"><i class="material-icons">visibility</i></a></span>
					</div>
				</div>
			@endforeach
		</div>
	</div>
</main>


	@include('page.template.footer')

	@include('page.template.scripts')

</body>
</html>