@extends('adm.main')

@section('titulo', 'Editar destacado')

@section('cuerpo')
<main>
	<div class="container">
	    @if(count($errors) > 0)
		<div class="col s12 card-panel red lighten-4 red-text text-darken-4">
	  		<ul>
	  			@foreach($errors->all() as $error)
	  				<li>{!!$error!!}</li>
	  			@endforeach
	  		</ul>
	  	</div>
		@endif
		@if(session('success'))
			<div class="col s12 card-panel green lighten-4 green-text text-darken-4">
				{{ session('success') }}
			</div>
		@endif

		<div class="row">
			<div class="col s12">
				{!!Form::model($destacado, ['route'=>['home.destacado.update', $destacado->id], 'method'=>'PUT', 'files' => true])!!}
						<div class="col s12" style="margin-bottom: 50px;">
					    	<div>{!!$destacado->name!!}</div>
						</div>
						<div class="input-field col s6">
							{!!Form::label('order','Orden')!!}
							{!!Form::text('order',$destacado->order,['class'=>'validate'])!!}
						</div>
							<div class="row">
							<div class="input-field col s6">
					    		{!!Form::Select('important',[null => 'Destacado...', 1 => 'si', 0 =>'no'])!!}
							</div>
						</div>
						<div class="col s12 no-padding">
							{!!Form::submit('Guardar', ['class'=>'waves-effect waves-light btn right'])!!}
						</div>
			{!!Form::close()!!}
			</div> 
		</div>
	</main>
@endsection