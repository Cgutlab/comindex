<header>	
	<div class="nav z-depth-0 row hide-on-med-and-down">
		<div class="container">
			<div class="left">
				<ul>
					<li class="gris-oscuro" style="margin-right: 20px;"><i class="fas fa-phone verde sociales-up"></i>{!! $horario->description !!}</li>
					<li class="gris-oscuro"><i class="fab fa-whatsapp verde sociales-up"></i>{!! $whatsapp->description !!}</li>
				</ul>
			</div>
			<div class="right center-align">
				<ul>
					<li class="centrado"><a class="@if($active==='presupuesto') activoup @endif" href="{{ route('presupuesto') }}">SOLICITAR PRESUPUESTO <span @if(Cart::count() == 0) style="display: none; @endif">({{Cart::count()}})</span></a></li>
					<li class=""><a class="buscar" href="{{ route('buscar') }}"><i class="material-icons azul">search</i></a></li>
				</ul>
			</div>
		</div>
	</div>
	<nav class="header z-depth-0">
		<div class="container">
		    <div class="nav-wrapper">
		      	<a href="{{ route('home') }}" class="brand-logo"><img src="{{ asset('images/logos/'. $logoh->image) }}"></a>
		      	<ul id="nav-mobile" class="hide-on-med-and-down right">
		      		<li><a class="centrado @if($active==='home') active @endif" href="{{ route('home') }}">Inicio</a></li>
		      		<li><a class="centrado @if($active==='empresa') active @endif" href="{{ route('empresa') }}">Empresa</a></li>
		      		<li><a class="centrado @if($active==='producto') active @endif" href="{{ route('familia') }}">Productos</a></li>
		      		<li><a class="centrado @if($active==='descarga') active @endif" href="{{ route('descarga') }}">Descargas</a></li>
		      		<li><a class="centrado @if($active==='novedad') active @endif" href="{{ route('novedades') }}">Novedades</a></li>
		      		<li><a class="centrado @if($active==='contacto') active @endif" href="{{ route('contacto') }}" href="">Contacto</a></li>
		      	</ul>
		    </div>
		</div>
	</nav>
</header>
	