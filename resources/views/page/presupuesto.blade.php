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
  <title>Comindex ~ Presupuesto</title>
  @include('page.template.links')
  <link rel="stylesheet" href="{{ asset('css/presupuesto.css') }}">
</head>
<body>
  @include('page.template.header')
<main class="presupuesto">
  <div class="banner">
    <img src="{{ asset('images/banners/'.$banner->image) }}" alt="">
    <div class="fs32 blanco bold texto">{!! $banner->title !!} <span @if(Cart::count() == 0) style="display: none; @endif">({{Cart::count()}})</span></div>
  </div>

  <div class="container mt50 mb50">
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
      <div class="center-align" @if(cart::count() != 0) style="display: none; @endif">
        <a href="{{ route('familia') }}"><span class="boton bold" style="border-radius: 9px; border: 2px solid #3F51B5; color:#3F51B5; background-color: white; padding: 10px 25px; width: 200px; ">AGREGAR PRODUCTOS</span></a>
      </div>
      <div class="row">
        <div class="col s12" id="estado1">
          @if(Cart::count() > 0)

          <table class="highlight bordered mb40" style="border-bottom: 2px solid #5B462D;">

            <thead style="border-bottom: 2px solid #5B462D; background-color: #ECECEC;">
              <th></th>
              <th>PRODUCTO</th>
              <th>CÓDIGO</th>
              <th class="center-align">CANTIDAD</th>
              <th class="center-align">ELIMINAR</th>
            </thead>         
            <tbody>
                @foreach(Cart::content()  as $row)
                  @php
                    if (file_exists(public_path().'/images/productos/'.$row->options->imagen))
                    {
                      $row->options->imagen = $row->options->imagen;
                    }
                    else
                    {
                        $row->options->imagen = 'no-image.jpg';
                    } 
                  @endphp
                <tr>
                  <td><div class="centrado" style="border: 1px solid #DDD; width: 83px; height: 80px; overflow: hidden;"><img src="{{ asset('images/productos/'.$row->options->imagen) }}" alt="" width="80px"></div></td>
                  <td class="capitalize">{{ $row->name }}</td>
                  <td class="capitalize">{{ $row->options->code }}</td>
                  <td class="center-align"><input type="number" name="cantidad" value="{{ $row->qty }}" style="width: 20%;"></td>
                  <td class="center-align">
                    <a href="{{ url('carrito/delete/'.$row->rowId) }}">
                      <i class="material-icons" style="color:lightgray;">cancel</i>
                    </a>
                  </td>
                </tr>
                @endforeach
              </tbody>            
          </table>
            <div class="row">
                           
                <div class="col mt10">
                    <a href="{{ route('familia') }}"><span class="boton bold" style="border-radius: 9px; border: 2px solid #3F51B5; color:#3F51B5; background-color: white; padding: 10px 25px; width: 200px; ">AGREGAR PRODUCTOS</span></a>
                </div>
                <div class="col right">
                    <button type="button" class="bg-azul bold" style="border-radius: 10px; color:white; border: 2px solid #3F51B5; padding: 10px 5px; background-color: #3F51B5; border: none; width: 200px;" id="siguiente">SIGUIENTE</button>
                </div>
                  
              </div>
            </div>
          @endif
        </div>
        <div class="row" id="estado2" style="display: none;">
            <div class="container gris-oscuro center-align mb30">{!!$texto->text!!}</div>
           {!! Form::open(['route'=>'carrito.enviar', 'method'=>'POST']) !!} 
        <div class="row">
          <div class="col m6 s12 input-field">
            {!! Form::label('nombre','Nombre') !!}
            {!! Form::text('nombres', null, ['class' => 'validate']) !!}
          </div>
          <div class="col m6 s12 input-field">
            {!! Form::label('localidad','Localidad') !!}
            {!! Form::text('localidad', null, ['class' => 'validate']) !!}
          </div>
          <div class="col m6 s12 input-field">
            {!! Form::label('email','E-mail') !!}
            {!! Form::email('email', null, ['class' => 'validate']) !!}
          </div>
          <div class="col m6 s12 input-field">
            {!! Form::label('telefono','Teléfono') !!}
            {!! Form::text('telefono', null, ['class' => 'validate']) !!}
          </div>
          <div class="input-field col m6 s12">
          {!! Form::label('mensaje','Mensaje') !!}
          {!!Form::textarea('mensaje', null, ['class'=>'materialize-textarea'])!!}
        </div>
        <div class="input-field col m6 s12">
          <div class="g-recaptcha" data-sitekey="6LfseW0UAAAAADXJoOONgA1bnhUzq1BO2UCnL9il"></div>
        </div>
        </div>
            <button type="button" id="atras" style="border-radius: 9px; border: 2px solid #3F51B5; color:#3F51B5; background-color: white; padding: 10px 25px; width: 200px;">ANTERIOR</button>
          <div class="col right">
            <button class="enviar" class="bg-azul bold" style="border-radius: 10px; color:white; border: 2px solid #3F51B5; padding: 10px 5px; background-color: #3F51B5; border: none; width: 200px;">COTIZAR</button></a>
          </div>
        {!! Form::close() !!}
        </div>
      </div>
    </div>
</main>


  @include('page.template.footer')

  @include('page.template.scripts')
  <script src='https://www.google.com/recaptcha/api.js'></script>
<script>
        $('#siguiente').click(function(event) {
          if($('input[name=nombre]').val()!=''||$('input[name=localidad]').val()!=''||$('input[name=telefono]').val()!=''||$('input[name=email]').val()!='')
          {
            document.getElementById("estado1").className = "animated bounceOutLeft";
                setTimeout(function(){ 
                    $("#estado1").hide('fast', function() {});
                    $("#estado2").show('fast', function() {});
                    document.getElementById("estado2").className = "animated bounceInRight";
                }, 1000);
                $('#presupuesto').removeClass('gris');
                $('#datos').addClass('gris');
          }
        });

        $('#atras').click(function(event) {
            document.getElementById("estado2").className = "animated bounceOutLeft";
            
            setTimeout(function(){ 
                $("#estado2").hide('fast', function() {}); 
                $("#estado1").show('fast', function() {});
                document.getElementById("estado1").className = "animated bounceInRight";
            }, 1000);
            
            $('#datos').removeClass('gris');
            $('#presupuesto').addClass('gris');
        });

        function animacion(id, clase) {
            $(id).removeClass("animated "+clase).addClass(clase + ' animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
              $(this).removeClass("animated "+clase);
            });
        };
    </script>
</body>
</html>
