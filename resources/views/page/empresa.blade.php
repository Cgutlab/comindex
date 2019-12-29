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
	<title>Comindex ~ Empresa</title>
	@include('page.template.links')
	<link rel="stylesheet" href="{{ asset('css/empresa.css') }}">
</head>
<body>
	@include('page.template.header')
<main class="empresa">
	<div class="slider">
	    <ul class="slides">
	        @foreach($sliders as $slider)
	            <li>
	                <img src="{{ asset('images/sliders/'.$slider->image) }}">
	                <div class="caption">
	                    <h2 class="mayus fs35  gris-oscuro no-margin">{!! $slider->title !!}</h2>
	                    <h4 class="fs55 bold gris-oscuro">{!! $slider->subtitle !!}</h4>
	                </div>
	            </li>
	        @endforeach
	    </ul>
	</div>
	<div class="container mt50 mb50">
		<div class="row mb20 mt20">
			<div class="col s12 m6">
				<div class="fs25 gris-oscuro">{!! $empresa->title !!}</div>
				<div class="fs44 azul">{!! $empresa->subtitle !!}</div>
				<div class="fs19 gris-oscuro">{!! $empresa->text !!}</div>
			</div>
			<div class="col s12 m6">
				<img src="{{ asset('images/empresa/'.$empresa->image) }}" alt="">
			</div>
		</div>
	</div>
</main>


	@include('page.template.footer')

	@include('page.template.scripts')

<script>
  	$(document).ready(function(){
  		$('.slider').slider();
  	}); 
</script>
</body>
</html>