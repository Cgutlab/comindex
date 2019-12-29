@extends('adm.main')

@section('titulo', 'Carga de productos')

@section('cuerpo')
    @if(count($errors) > 0)
<div class="col s12 card-panel red lighten-4 red-text text-darken-4">
    <ul>
        @foreach($errors->all() as $error)
        <li>
            {!!$error!!}
        </li>
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
    <div class="col-xs-12 col-md-8 col-md-offset-2">
        <div class="panel panel-default table-responsive">

            <div class="panel-heading">
                <h2>ATENCIÓN</h2>
            </div>
      <div class="panel-body">
       
       <p>Para hacer la carga de productos mediante un archivo Excel, deberá cumplir lo siguiente:
       </p>
       <p>1. El archivo debe ser de tipo <strong>Excel</strong> .</p>
       <p>2. Descargue el formato de excel presionando el boton "Descargar formato Excel". La hoja del archivo del formato se encuentra protegida para evitar cambios en los campos, recuerde que debe abrir un nuevo archivo y copiar cada campo tal cual y se muestra; sin acentos, ni letras mayúsculas. </p>
       <button class="btn"><a href="{{ asset('images/formato.xlsx') }}" download="formato_carga.xlsx" style="color:white;">Descargar formato Excel</a></button>
       <p>3. Una vez tenga su archivo de excel propio para cargar el producto, cargue el archivo excel y presione "Enviar"</p>
       </div>
        
       

<div class="links">
    <form method="post" action="{{route('importCat')}}" enctype="multipart/form-data">
        {{csrf_field()}}
        <input type="file" name="excel">
        <br><br>
        <input class="btn right" type="submit" value="Enviar">
    </form>
</div>
      
    </div>
    </div>
</div>
@endsection
@section('js')
<script type="text/javascript">
$(document).ready(function(){
    $('select').formSelect();
  });

</script>
@endsection