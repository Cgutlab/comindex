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
	<title>Comindex ~ Contacto</title>
	@include('page.template.links')
	<link rel="stylesheet" href="{{ asset('css/contacto.css') }}">
</head>
<body>
	@include('page.template.header')
<main class="contacto">
	<iframe src="{{ $mapa->description }}" frameborder="0" width="100%" height="450"></iframe>
	<div class="container mt70 mb70">
		<div class="center-align">
			<div class="fs20 gris-oscuro">{!! $texto->title !!}</div>
			<div class="fs40 azul">{!! $texto->subtitle !!}</div>
		</div>
		<div class="row">
			{!!Form::open(['route'=>'contacto.enviar', 'method'=>'POST'])!!}
			<div class="input-field col m6 s12">
				{!!Form::text('nombre',null,['class'=>'validate', 'placeholder'=>'Nombre', 'required'])!!}
				<label for="nombre"></label>
			</div>
			<div class="input-field col m6 s12">
				{!!Form::text('telefono',null,['class'=>'validate', 'placeholder'=>'Teléfono', 'required'])!!}
				<label for="telefono"></label>
			</div>
			<div class="input-field col m6 s12">
				{!!Form::text('empresa',null,['class'=>'validate', 'placeholder'=>'Empresa', 'required'])!!}
				<label for="empresa"></label>
			</div>
			<div class="input-field col m6 s12">
				{!!Form::email('email',null,['class'=>'validate', 'placeholder'=>'E-mail', 'required'])!!}
				<label for="email"></label>
			</div>
			<div class="input-field col m6 s12" style="margin-top: 47px;">
				<label for="mensaje"></label>
				{!!Form::textarea('mensaje', null, ['class'=>'materialize-textarea', 'placeholder'=>'Mensaje', 'required'])!!}
			</div>
			<div class="input-field col m6 s12" style="margin-top: 47px;">	
				<div class="g-recaptcha" data-sitekey="6LfseW0UAAAAADXJoOONgA1bnhUzq1BO2UCnL9il"></div>
				<a href="#modal1" class="modal-trigger" style="color:#494949; text-decoration: underline;">Términos y Condiciones</a>
			</div>		                  
			<div class="col m12 center-align">
				<button class="btn waves-effect waves-light z-depth-0 mb50 mt20 bg-azul" type="submit" name="action">Enviar
				</button>
			</div>
		{!!Form::close()!!}
		</div>
	</div>
	<div id="modal1" class="modal">
	    <div class="modal-content">
	      <h4>{!! $legal->title !!}</h4>
	      <p>{!! $legal->text !!}</p>
	    </div>
	    <div class="modal-footer">
	      <a href="#!" class="modal-close waves-effect btn-flat">Acepto</a>
	    </div>
  	</div>
</main>


	@include('page.template.footer')

	@include('page.template.scripts')
	<script src='https://www.google.com/recaptcha/api.js'></script>
	<script>
		$(document).ready(function(){
    		$('.modal').modal();
  		});
	</script>
</body>
</html>