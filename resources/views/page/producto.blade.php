<!DOCTYPE html>
<html lang="es">
<head>
	
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    @foreach ($metadatos as $metadato)
	    <meta name="description" content="{{ $metadato->description }}">
	    <meta name="keyword" content="{{ $producto->keyword }}">
   	@endforeach
	<title>Comindex ~ {!! $producto->name !!}</title>
	@include('page.template.links')
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
	<link rel="stylesheet" href="{{ asset('css/productos.css') }}">
</head>
<body>
	@include('page.template.header')
<main class="producto">
	@include('page.template.buscador')
	<div class="container mt50 mb50" style="width: 80%;">
		<div class="row">
			<div class="col s12 m3">
				<ul class="collapsible z-depth-0">
				    @foreach($familias as $familia)
				    	<li>
					      	<div class="collapsible-header fs17" style="display:flex;justify-content: space-between; align-items: center;">{!! $familia->title !!}<i class="material-icons right gris-oscuro no-margin">chevron_right</i></div>
					      	@foreach($productos as $item)
					      		@if($familia->id == $item->family_id)
					      			<div class="collapsible-body fs12"><a class="gris-oscuro" href="{{ route('producto',$item->id) }}">{!! $item->name !!}</a></div>
					      		@endif
					      	@endforeach
					    </li>
				    @endforeach
				</ul>
			</div>
			<div class="col s12 m9">
				<div class="row">
                    @php
						if (file_exists(public_path().'/images/productos/'.$producto->image))
						{
							$producto->image = $producto->image;
						}
						else
						{
					    	$producto->image = 'no-image.jpg';
						} 
					@endphp
					
					<div class="col s12 m6">
						<div class="slider">
						    <ul class="slides">
					            <li>
	                				<img src="{{ asset('images/productos/'.$producto->image) }}" alt="">
	                			</li>
	                				@foreach($galerias as $galeria)
	                				<li>
	                					<img src="{{ asset('images/galeria/'.$galeria->image) }}" alt="">
	                				</li>
	                				@endforeach
					            </li>
						    </ul>
						</div>					
					</div>
					<div class="col s12 m6">
						<div class="gris-oscuro">
							<div class="azul fs30" style="border-bottom: 1px solid #DDD;">{!! $producto->name !!}</div>
							<div class="verde fs20 mt20">CÓDIGO</div>
							<div class="fs16">{!! $producto->code !!}</div>
							<div>{!! $producto->descripcion !!}</div>
							<table class="fs17 bordered">
								<tr>
									<td></td>
									<td></td>
								</tr>
								@if($producto->marca)
									<tr>
										<td class="bold">Marca</td>
										<td>{!! $producto->marca->title !!}</td>
									</tr>
								@endif
								@if($producto->model)
									<tr>
										<td class="bold">Modelo</td>
										<td>{!! $producto->model !!}</td>
									</tr>
								@endif
							</table>
						</div>
					</div>
				</div>
				<div class="row mt40">
					<div class="col s4 push-s1"><a href="{{ $producto->pdf }}" target="_blank"><button class="btn bg-azul z-depth-0" @if($producto->pdf == null) style="display: none;" @endif>FICHA PDF</button></a></div>
					{!! Form::open(['route'=>'carrito.add','method'=>'POST'])!!}
						<div class="col s3 offset-s1"><button type="submit" class="submit-button btn bg-azul z-depth-0">PEDIR</div>
						<input type="hidden" value="{{ $producto->id }}" name="id">
						<input type="hidden" value="1" name="cantidad">
						</button>
					{!! Form::close() !!}
					<div class="col s3" @if($producto->route == null) style="display: none;" @endif ><a href="{{ $producto->route }}"><button class="btn z-depth-0 bold center" style="background-color: #FFE600; color: #2B2F7B;"><img src="{{ asset('images/icono/mercadopago.png') }}" alt="">COMPRAR</button></a></div>
				</div>
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
<script>
  	 	$(".collapsible-header").click(function(){
    	$(".collapsible-header").children().html('chevron_right');
    	$(this).children().html('keyboard_arrow_down');
    	});
</script>
</body>
</html>