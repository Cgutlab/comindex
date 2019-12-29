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
  <title>Comindex ~ Novedades</title>
  @include('page.template.links')
  <link rel="stylesheet" href="{{ asset('css/novedad.css') }}">
</head>
<body>
  @include('page.template.header')
<main class="novedad">
  <div class="banner">
    <img src="{{ asset('images/banners/'.$portada->image) }}" alt="">
    <div class="fs32 blanco bold texto">{!! $portada->title !!}</div>
  </div>
  <div class="container">
    <div><a class="gris-claro" href="{{ route('novedades') }}">« Volver</a></div>
      <div class="row mt50 mb50">
        <div class="col s12 m6">
          <img class="responsive-img" src="{{ asset('images/novedades/'.$novedad->image) }}" alt="">
        </div>
        <div class="col s12 m6">
          <div class="fs28 azul">{!! $novedad->title !!}</div>
          <div class="gris-claro">{!! $novedad->date !!}</div>
          <div class="gris-oscuro bold">{!! $novedad->text !!}</div>
          <button class="btn z-depth-0 bg-azul"><a class="blanco" href="" target="_blank">FICHA PDF</a></button>
        </div>
      </div>
  </div>
</main>


  @include('page.template.footer')

  @include('page.template.scripts')

</body>
</html>
