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
	<title>Comindex ~ Subfamilias</title>
	@include('page.template.links')
	<link rel="stylesheet" href="{{ asset('css/productos.css') }}">
</head>
<body>
	@include('page.template.header')
<main class="subfamilia">
	@include('page.template.buscador')
	<div class="container mt50 mb50" style="width: 80%;">
		<div class="row">
			<div class="col s12 m3">
				<ul class="collapsible z-depth-0">
				    @foreach($familias as $familia)
				    	<li>
					      	<div class="collapsible-header fs17" style="display:flex;justify-content: space-between; align-items: center;">{!! $familia->title !!}<i class="material-icons right gris-oscuro no-margin">chevron_right</i></div>
						      	@foreach($familia->productos()->get() as $producto)
					      			<div class="collapsible-body fs12"><a class="gris-oscuro" href="{{ route('producto',$producto->id) }}">{!! $producto->name !!}</a></div>
						      	@endforeach
					    </li>
				    @endforeach
				</ul>
			</div>
			<div class="col s12 m9">
				@foreach($subfamilias as $subfamilia)
					@if($subfamilia != null && $subfamilia !='')
						<a href="{{ route('productos',$subfamilia->id) }}" class="gris-oscuro">
						    <div class="col s12 m4 l3">
						      	<div class="card z-depth-0">
						        	<div class="card-image">
						        		<div class="efecto">
					                        <span class="central"><i class="material-icons">add</i></span>
					                    </div>
					                    @php
											if (file_exists(public_path().'/images/subfamilias/'.$subfamilia->image))
											{
												$subfamilia->image = $subfamilia->image;
											}
											else
											{
										    	$subfamilia->image = 'no-image.jpg';
											} 
										@endphp
						          		<img src="{{ asset('images/subfamilias/'.$subfamilia->image) }}">
						        	</div>
						        	<div class="card-content center-align centrado bold fs18">
					        		<div style="margin:0; font-size: 15px; color: #009687;">{!! $producto->code !!}</div>
					        		<div>{!! str_limit($producto->name,25) !!}</div>
					        		
					        	</div>
						      	</div>
						    </div>
					    </a>
				    @endif
				@endforeach
				@foreach($productos as $producto)
					@if($producto->family_id != null && $producto->family_id !='')
						<a href="{{ route('producto',$producto->id) }}" class="gris-oscuro">
						    <div class="col s12 m4 l3">
						      	<div class="card z-depth-0">
						        	<div class="card-image">
						        		<div class="efecto">
					                        <span class="central"><i class="material-icons">add</i></span>
					                    </div>
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
						          		<img src="{{ asset('images/productos/'.$producto->image) }}">
						        	</div>
						        	<div class="card-content center-align centrado bold fs18">
					        		<div style="margin:0; font-size: 15px; color: #009687;">{!! $producto->code !!}</div>
					        		<div>{!! str_limit($producto->name,25) !!}</div>
					        		
					        	</div>
						      	</div>
						    </div>
					    </a>
				    @endif
				@endforeach
			</div>
		</div>
	</div>

</main>


	@include('page.template.footer')

	@include('page.template.scripts')

<script>
  	$(document).ready(function(){
  		$('select').material_select();
  		$('.collapsible').collapsible();
  	}); 

  	 	$(".collapsible-header").click(function(){
    	$(".collapsible-header").children().html('chevron_right');
    	$(this).children().html('keyboard_arrow_down');
    	});
</script>
</body>
</html>



	