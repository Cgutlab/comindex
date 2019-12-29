<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{ $metadato->description }}">
    <meta name="keyword" content="{{ $metadato->keyword }}">
	<title>Comindex ~ Busqueda</title>
    @include('page.template.links')
	<link rel="stylesheet" href="{{ asset('css/buscar.css') }}">
</head>
<body>
	@include('page.template.header')
<main class="buscar mb70">
	<div class="container">
		<nav class="z-depth-0 mt70 mb50 busqueda">
	    	<div class="nav-wrapper z-depth-0">
	      		{!! Form::open(['route'=>'buscador', 'method' => 'POST']) !!}
                    <div class="input-field">
                        <input id="busqueda" name="busqueda" type="search" placeholder="Buscar" required>
                        <label class="label-icon" for="search"><i class="material-icons">search</i></label>
                        <i class="material-icons">chevron_right</i>
                    </div>
	      		{!! Form::close() !!}
	    	</div>
	  	</nav>
      	<div class="row">
            @if($busca==1)
                @forelse ($productos as $producto)
                    <a href="{{ route('producto',$producto->id) }}">
                        <div class="col s12 m6 l4">
                            <div class="card z-depth-0">
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
                                <div class="card-image">
                                    <img src="{{ asset('images/productos/'.$producto->image) }}">
                                </div>
                            <div class="card-content center-align centrado bold fs18" style="padding: 0!important;height: 60px;color: #494949;display: grid;">
                                    <div style="margin:0; font-size: 15px; color: #009687;">{!! $producto->code !!}</div>
                                    <div>{!! str_limit($producto->name,25) !!}</div>
                                    
                            </div>
                          </div>
                        </div>
                    </a>
                @empty
                    <div class="gris-claro center-align centrado fs22"><i class="material-icons verde" style="margin-right: 10px;">warning</i>   No se encontraron productos</div>

                @endforelse
            @endif
        </div>
    </div>
</main>
@include('page.template.footer')
@include('page.template.scripts')
</body>
</html>