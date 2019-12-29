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
<main class="novedades">
  <div class="banner">
    <img src="{{ asset('images/banners/'.$portada->image) }}" alt="">
    <div class="fs32 blanco bold texto">{!! $portada->title !!}</div>
  </div>
  <div class="container mt50 mb50">
      <div class="row">
        @foreach($novedades as $novedad)
          <div class="col s12 m4">
            <a href="{{ route('novedad',$novedad->id)}}" class="gris-oscuro">
              <div class="card hoverable">
                <div class="card-image">
                  <img src="{{ asset('images/novedades/'.$novedad->image) }}">
                  <a class="btn-floating halfway-fab waves-effect waves-light"><i class="material-icons">add</i></a>
                </div>
                <div class="card-content gris-oscuro fs16">
                <span class="card-title fs17 bold">{!! $novedad->title !!}</span>
                  {!! $novedad->text !!}
                </div>
              </div>
            </a>
          </div>
        @endforeach
      </div>
    </div>
</main>


  @include('page.template.footer')

  @include('page.template.scripts')

</body>
</html>















