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
	<title>Comindex ~ Familias</title>
	@include('page.template.links')
	<link rel="stylesheet" href="{{ asset('css/productos.css') }}">
</head>
<body>
	@include('page.template.header')
<main class="familia">
	@include('page.template.buscador')
	<div class="container mt50 mb50">
		<div class="row">
			@foreach($familias as $familia)
				<a href="{{ route('subfamilia',$familia->id) }}" class="gris-oscuro">
				    <div class="col s12 m6 l4 mb30">
				      	<div class="card z-depth-0">
				        	<div class="card-image">
				        		<div class="efecto">
			                        <span class="central"><i class="material-icons">add</i></span>
			                    </div>
				          		<img src="{{ asset('images/familias/'.$familia->image) }}">
				        	</div>
				        	<div class="card-content center-align centrado bold fs18">
				        		{!! $familia->title !!}
				        	</div>
				      	</div>
				    </div>
			    </a>
			@endforeach
		</div>
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