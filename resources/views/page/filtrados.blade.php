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
	<title>Comindex ~ Filtro</title>
	@include('page.template.links')
	<link rel="stylesheet" href="{{ asset('css/productos.css') }}">
</head>
<body>
	@include('page.template.header')
<main class="familia">
	@include('page.template.buscador')
	<div class="container mt50 mb50">					     
		@if($buscar == 1)
			<div class="row">
				@forelse($consultas as $consulta)
					<a href="{{ route('producto',$consulta->id) }}" class="gris-oscuro">
					    <div class="col s12 m4 l3">
					      	<div class="card z-depth-0">
					        	<div class="card-image">
					        		<div class="efecto">
				                        <span class="central"><i class="material-icons">add</i></span>
				                    </div>
				                    @php
										if (file_exists(public_path().'/images/productos/'.$consulta->image))
										{
											$consulta->image = $consulta->image;
										}
										else
										{
									    	$consulta->image = 'no-image.jpg';
										} 
									@endphp
					          		<img src="{{ asset('images/productos/'.$consulta->image) }}">
					        	</div>
					        	<div class="card-content center-align centrado bold fs18" style="padding:0!important;display: grid; height: 60px;">
					        		<div style="margin:0; font-size: 15px; color: #009687;">{!! $consulta->code !!}</div>
					        		<div>{!! str_limit($consulta->name,25) !!}</div>
					        		
					        	</div>
					      	</div>
					    </div>
				    </a>
				 @empty
                    <div class="gris-claro center-align centrado fs22"><i class="material-icons verde" style="margin-right: 10px;">warning</i>   No se encontraron productos</div>

                @endforelse
			</div>
		@endif
		@if($buscar == 2)
			<div class="row">
				@forelse($consultas as $consulta)
					<a href="{{ route('producto',$consulta->id) }}" class="gris-oscuro">
					    <div class="col s12 m4 l3">
					      	<div class="card z-depth-0">
					        	<div class="card-image">
					        		<div class="efecto">
				                        <span class="central"><i class="material-icons">add</i></span>
				                    </div>
				                    @php
										if (file_exists(public_path().'/images/productos/'.$consulta->image))
										{
											$consulta->image = $consulta->image;
										}
										else
										{
									    	$consulta->image = 'no-image.jpg';
										} 
									@endphp
					          		<img src="{{ asset('images/productos/'.$consulta->image) }}">
					        	</div>
					        	<div class="card-content center-align centrado bold fs18" style="padding:0!important;display: grid; height: 60px;">
					        		<div style="margin:0; font-size: 15px; color: #009687;">{!! $consulta->code !!}</div>
					        		<div>{!! str_limit($consulta->name,25) !!}</div>
					        		
					        	</div>
					      	</div>
					    </div>
				    </a>
				 @empty
                    <div class="gris-claro center-align centrado fs22"><i class="material-icons verde" style="margin-right: 10px;">warning</i>   No se encontraron productos</div>

                @endforelse
			</div>
		@endif
	</div>
</main>

	@include('page.template.footer')

	@include('page.template.scripts')

<script>
  	$(document).ready(function(){
  		$('select').material_select();
  	}); 
</script>
</body>
</html>