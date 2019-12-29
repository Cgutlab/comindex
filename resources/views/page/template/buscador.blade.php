<div class="container buscador">
	<div class="bg-gris-claro">
		<div class="bold fs20 gris-oscuro" style="margin-bottom: 10px;">Buscador de productos</div>
		{!! Form::open(['route' => 'filter', 'method' => 'POST']) !!}
			<div class="row">
				<div class="col s4">
					<select name="familia" id="">
						<option value="familia">Familia</option>
							@foreach($familias as $familia)
								<option value="{{ $familia->id }}">{!! $familia->title !!}</option>
							@endforeach
					</select>
				</div>
				<div class="col s4">
					<select name="marca" id="">
						<option value="marca">Marca</option>
							@foreach($marcas as $marca)
								<option value="{{ $marca->id }}">{!! $marca->title !!}</option>
							@endforeach
					</select>
				</div>
				<div class="col s4">
					{!! Form::text('codigo', null, ['class' => 'absolute' ,'placeholder' => 'Código o Descripción']) !!}
				</div>
			</div>
			<button type="bg-gris-claro submit" style="border: none; padding: 0;"><i title="Filtrar" class="material-icons verde">search</i></button>
		{!! Form::close() !!}
	</div>	
</div>