@extends('adm.main')

@section('titulo', 'Editar novedad')

@section('cuerpo')

<main>
	<div class="container">
	    @if(count($errors) > 0)
		<div class="col s12 card-panel red lighten-4 red-text text-darken-4">
	  		<ul>
	  			@foreach ($errors->all() as $error)
	  				<li>{!! $error !!}</li>
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
			<div class="col-sm-12">
            {!! Form::model($novedad, ['route'=>['novedad.update', $novedad->id], 'method'=>'PUT', 'files' => true]) !!}
				<div class="row">
				  	<div class="input-field col s12">
			      		{!! Form::label('title','Título') !!}
						{!! Form::text('title', $novedad->title, ['class'=>'validate']) !!}
					</div>
			      	<div class="input-field col s12">
			      		{!! Form::label('subtitle','Subtítulo') !!}
						{!! Form::text('subtitle', $novedad->subtitle, ['class'=>'validate']) !!}
				    </div>
				    <label class="col s12" for="text">Texto</label>
			      	<div class="input-field col s12">
						{!!Form::textarea('text', $novedad->text, ['class'=>'validate'])!!}
				    </div>
					<div class="input-field col s6">
						{!! Form::label('date','Fecha') !!}
						{!! Form::text('date',$novedad->date,['class'=>'datepicker', 'required']) !!}
					</div>
					<div class="input-field col s6">
						{!! Form::label('order','Orden') !!}
						{!! Form::text('order',$novedad->order,['class'=>'validate', 'required']) !!}
					</div>
					<div class="file-field input-field col s6">
						<div class="btn">
						    <span>Imagen</span>
						    {!! Form::file('image') !!}
						</div>
						<div class="file-path-wrapper">
						    {!! Form::text('',null, ['class'=>'file-path validate']) !!}
						</div>
						<small>.</small>
					</div>
					<div class="file-field input-field col s6">
						<div class="btn">
						    <span>Ficha</span>
						    {!! Form::file('route') !!}
						</div>
						<div class="file-path-wrapper">
						    {!! Form::text('',null, ['class'=>'file-path validate']) !!}
						</div>
						<small>.</small>
					</div>
				</div>
				<div class="col s12 no-padding">
					{!! Form::submit('Guardar', ['class'=>'waves-effect waves-light btn right']) !!}
				</div>
			{!! Form::close() !!} 
			</div>
			</div>
		</div>
	</div>
<script src="//cdn.ckeditor.com/4.7.3/full/ckeditor.js"></script>
<script>
	CKEDITOR.replace('text');
	CKEDITOR.config.height = '300px';
	CKEDITOR.config.width = '100%';
</script>
@endsection