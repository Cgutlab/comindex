@extends('adm.main')

@section('titulo', 'Editar marca')

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
				{!!Form::model($marca, ['route'=>['home.marca.update', $marca->id], 'method'=>'PUT', 'files' => true])!!}
						<div class="input-field col s12">
							{!!Form::label('Nombre')!!}
							{!!Form::text('title',$marca->title,['class'=>'validate', 'disabled'])!!}
						</div>
						<div class="input-field col s6">
							{!!Form::label('Orden')!!}
							{!!Form::text('order',$marca->order,['class'=>'validate'])!!}
						</div>
						<div class="file-field input-field col s6">
					    	{!!Form::Select('important',[1=> 'si', 0=>'no'])!!}
						</div>
						<div class="col s12 no-padding">
							{!!Form::submit('Guardar', ['class'=>'waves-effect waves-light btn right'])!!}
						</div>
			{!!Form::close()!!}
			</div> 
		</div>
	</main>
@endsection