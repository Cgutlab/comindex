@extends('adm.main')

@section('titulo', 'Editar modelo')

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
				{!!Form::model($producto, ['route'=>['producto.update', $producto->id], 'method'=>'PUT', 'files' => true])!!}
					<div class="row">
						<div class="input-field col s6">
							{!!Form::label('Nombre')!!}
							{!!Form::text('name',$producto->name,['class'=>'validate', 'required'])!!}
						</div>
						<div class="input-field col s6">
							{!!Form::label('Código')!!}
							{!!Form::text('code',$producto->code,['class'=>'validate', 'required'])!!}
						</div>
						<div class="file-field input-field col s6">
							<select name="family_id" id="family_id" class="form-control" required>
						    	<option value=""> -- Selecciona una familia --</option>
								    @foreach ($familias as $familia)
								        <option value="{{ $familia->id }}">{{ $familia->title }}</option>
								    @endforeach 
							</select>
						</div>
						<div class="input-field col s6">
							<select name="subfamily_id">
								<option value=""> -- Selecciona una subfamilia --</option>
								@foreach($familias as $familia)
									<optgroup label="{!! $familia->title !!}">
										@foreach($subfamilias as $subfamilia)
											@if($familia->id == $subfamilia->family_id)
												<option value="{{ $subfamilia->id }}" @if($subfamilia->id == $producto->subfamily_id) selected @endif>{{ $subfamilia->title }}</option>
											@endif
										@endforeach
									</optgroup>
								@endforeach
							</select>
						</div>
						<div class="input-field col s6">
							<select name="brand_id">
								<option value=""> -- Selecciona una marca --</option>
								@foreach($marcas as $marca)
									<option value="{{ $marca->id }}" @if($marca->id == $producto->brand_id) selected @endif>{{ $marca->title }}</option>
								@endforeach
							</select>
						</div>
						<div class="input-field col s6">
							{!!Form::label('Orden')!!}
							{!!Form::text('order',$producto->order,['class'=>'validate'])!!}
						</div>
					</div>
					<div class="row">
				      	<div class="input-field col s12">
				      		<span class="gris">Descripción</span>
							{!!Form::textarea('descripcion',$producto->descripcion, ['class'=>'validate'])!!}
					    </div>
					</div>
					<div class="row">			
						<div class="file-field input-field col s6">
					    	<div class="btn">
						        <span>Imagen</span>
						        {!! Form::file('image') !!}
					    	</div>
						    <div class="file-path-wrapper">
						      	{!! Form::text('',null, ['class'=>'file-path validate']) !!}
						    </div>
						</div>
						<div class="file-field input-field col s6">
					    	<div class="btn">
						        <span>Pdf</span>
						        {!! Form::file('pdf') !!}
					    	</div>
						    <div class="file-path-wrapper">
						      	{!! Form::text('',null, ['class'=>'file-path validate']) !!}
						    </div>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s6">
							{!!Form::label('model','Modelo')!!}
							{!!Form::text('model',null,['class'=>'validate'])!!}
						</div>
						<div class="input-field col s6">
							{!!Form::label('route','Ruta mercado libre')!!}
							{!!Form::text('route',$producto->route,['class'=>'validate'])!!}
						</div>
						<div class="input-field col s6">
							{!!Form::label('keyword','Keyword')!!}
							{!!Form::text('keyword',$producto->keyword,['class'=>'validate'])!!}
						</div>
						<div class="input-field col s6">
					    	{!!Form::Select('important',['Destacado...', 1 => 'si', 0 =>'no'])!!}
						</div>
					</div>
				<div class="col s12 no-padding">
					{!!Form::submit('Crear', ['class'=>'waves-effect waves-light btn right'])!!}
				</div>
				{!!Form::close()!!} 
				</div>
			</div>
		</div>
	</div>
</main>
<script src="//cdn.ckeditor.com/4.7.3/full/ckeditor.js"></script>
<script>
	CKEDITOR.replace('descripcion');
	CKEDITOR.config.height = '300px';
	CKEDITOR.config.width = '100%';
</script>
@endsection