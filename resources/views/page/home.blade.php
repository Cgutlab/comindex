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
	<title>Comindex ~ Home</title>
	@include('page.template.links')
	<link rel="stylesheet" href="{{ asset('css/home.css') }}">
</head>
<body>
	@include('page.template.header')
<main class="home">
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
		@include('page.template.buscador')
	<div class="container">
		<div class="destacados">
			<h1 class="azul center-align fs40 mt50">Productos Destacados</h1>
			<div class="row">
				@foreach($destacados as $destacado)
					<a href="{{ route('producto',$destacado->id)}}" class="gris-oscuro">
					    <div class="col s12 m6 l4">
					      	<div class="card z-depth-0">
					      		@php
                                        if (file_exists(public_path().'/images/productos/'.$destacado->image))
                                        {
                                            $destacado->image = $destacado->image;
                                        }
                                        else
                                        {
                                            $destacado->image = 'no-image.jpg';
                                        } 
                                @endphp
					        	<div class="card-image">
					          		<img src="{{ asset('images/productos/'.$destacado->image) }}">
					        	</div>
					        	 <div class="card-content center-align centrado bold fs18" style="padding: 0!important;height: 60px;color: #494949;display: grid;">
                                    <div style="margin:0; font-size: 15px; color: #009687;">{!! $destacado->code !!}</div>
                                    <div>{!! str_limit($destacado->name,25) !!}</div>
                                    
                            </div>
					      	</div>
					    </div>
				    </a>
				@endforeach
  			</div>
		</div>
		<div class="iconos mb70 mt70">
			<div class="row">
				@foreach($iconos as $icono)
					<div class="col s6 m3 center-align">
						<div>
							<img src="{{ asset('images/icono/'.$icono->image) }}" alt="">
						</div>
						<div class="fs20 bold gris-oscuro">
							{!! $icono->title !!}
						</div>
					</div>
				@endforeach
			</div>
		</div>
	</div>
	<div class="bg-gris-claro center-align ">
		<div class="container texto mb40">
			<div class="fs20 pt50">{!! $texto->title !!}</div>
			<div class="azul fs48">{!! $texto->subtitle !!}</div>
			<div class="gris-oscuro fs18">{!! $texto->text !!}</div>
		</div>
		<div class="container">
			<div class="marcas mb50">
				@foreach($marcas as $marca)
					<div><img src="{{ asset('images/marcas/'.$marca->image) }}" alt="" width="80%"></div>
				@endforeach
			</div>
		</div>
	</div>
</main>


	@include('page.template.footer')

	@include('page.template.scripts')

<script>
  	$(document).ready(function(){
  		$('.slider').slider();
  		$('select').material_select();
  	}); 
</script>
</body>
</html>