 <footer>
    <div class="container">
        <div class="row">
            <div class="col s12 l4 center-align mt20">
                <img class="mt20" src="{{ asset('images/logos/'. $logof->image) }}" alt="">
            </div>
    	   	<div class="col s12 l5">
    	       	<h6 class="verde fs16 bold">SITEMAP</h6>
                    <ul class="sitemap">
                <div class="row">
                    <div class="col l5">
                        <li><a href="{{ route('home') }}">Inicio</a></li>
                        <li><a href="{{ route('empresa') }}">Empresa</a></li>
                        <li><a href="{{ route('familia') }}">Productos</a></li>
                        <li><a href="{{ route('presupuesto') }}">Solicitar presupuesto</a></li>
                    </div>
                    <div class="col l6">
                        <li><a href="{{ route('descarga') }}">Descargas</a></li>
                        <li><a href="{{ route('novedades') }}">Novedades</a></li>
                        <li><a href="{{ route('contacto') }}">Contacto</a></li>
                    </div>
                </div>
                    </ul>
    	    </div>
        	<div class="col s12 l3">
                <h6 class="verde mayus fs16 bold">COMINDEX SRL</h6>
                <div class="item-footer row blanco">
                    <div class="col l9 lighter mb15">{{ $ubicacion->description }}</div>
                </div>
                <div class="item-footer row blanco" style="line-height: 1;">
                    <div class="col l10 lighter mb15">{{ $telefono->description }}</div>
                    <div class="col l10 lighter mb15">{{ $telefono2->description }}</div>
                </div>
                <div class="item-footer row blanco">
                    <div class="col l10 lighter mb15">{{ $correo->description }}</div>
                </div>
            </div>
        </div>
    </div>
</footer>