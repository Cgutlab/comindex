<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keyword" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Panel de Administrador | @yield('titulo')</title>

    <link rel="shortcut icon" href="{{ asset('favicon.ico') }}" type="image/x-icon">

    <link rel="icon" href="{{ asset('favicon.ico') }}" type="image/x-icon">
    <!-- Materialize Core CSS -->
    <link href="{{ asset('css/materialize/materialize.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/admin.css') }}">
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/css?family=Titillium+Web:300,400,600" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
<!-- Menu derecho -->
<div class="row">
            <div id="nav-mobile" class="side-nav fixed col s3 z-depth-1" style="padding: 0; height: 100%; overflow-y: auto; position: fixed;" role="navigation">
                <img class="responsive-img logo-admin" src="{{ asset('images/logos/adminlogo.png') }}" alt="" width="74%">
                <ul class="collapsible z-depth-0">
                    <li><a class="collapsible-header waves-effect waves-admin"><i class="material-icons">home</i>Home</a>
                        <div class="collapsible-body">
                            <div class=""><a href="{{ route('home.slider.create') }}">Crear slider</a></div>
                            <div class=""><a href="{{ route('home.slider.show') }}">Editar slider</a></div>
                            <div class=""><a href="{{ route('home.destacado.show') }}">Editar destacados</a></div>
                            <div class=""><a href="{{ route('homecontenido.edit') }}">Editar texto</a></div>
                            <div class=""><a href="{{ route('home.marca.show') }}">Mostrar marcas</a></div>
                            <div class=""><a href="{{ route('homeicono.show') }}">Editar iconos</a></div>
                        </div>
                    </li>
                    <li><a class="collapsible-header waves-effect waves-admin"><i class="material-icons">business</i>Empresa</a>
                        <div class="collapsible-body">
                            <div class=""><a href="{{ route('empresa.slider.create') }}">Crear slider</a></div>
                            <div class=""><a href="{{ route('empresa.slider.show') }}">Editar slider</a></div>
                            <div class=""><a href="{{ route('empresa.edit') }}">Editar contenido</a></div>
                        </div>
                    </li>
                    <li><a class="collapsible-header waves-effect waves-admin"><i class="material-icons">settings</i>Productos</a>
                        <div class="collapsible-body"> 
                            <div class=""><a href="{{ route('producto.familia.create') }}">Crear familia</a></div>
                            <div class=""><a href="{{ route('producto.familia.show') }}">Editar familias</a></div>
                            <div class=""><a href="{{ route('producto.subfamilia.create') }}">Crear subfamilia</a></div>
                            <div class=""><a href="{{ route('producto.subfamilia.select') }}">Editar subfamilias</a></div>
                            <div class=""><a href="{{ route('producto.create') }}">Crear producto</a></div>
                            <div class=""><a href="{{ route('producto.select') }}">Editar productos</a></div>
                            <div class=""><a href="{{ route('producto.marca.create') }}">Crear marca</a></div>
                            <div class=""><a href="{{ route('producto.marca.show') }}">Editar marcas</a></div>
                        </div>          
                    </li>
                    <li><a class="collapsible-header waves-effect waves-admin"><i class="material-icons">assessment</i>Excel</a>
                        <div class="collapsible-body">
                            <div class=""><a href="{{ route('excelcat') }}">Carga por excel</a></div>
                        </div>
                    </li>   
                    <li><a class="collapsible-header waves-effect waves-admin"><i class="material-icons">get_app</i>Descargas</a>
                        <div class="collapsible-body">              
                            <div class=""><a href="{{ route('descarga.banner.edit') }}">Editar portada</a></div>
                            <div class=""><a href="{{ route('descarga.create') }}">Crear descarga</a></div>                            
                            <div class=""><a href="{{ route('descarga.show') }}">Editar descargas</a></div>
                        </div>          
                    </li>
                    <li><a class="collapsible-header waves-effect waves-admin"><i class="material-icons">library_books</i>Novedades</a>
                        <div class="collapsible-body">  
                            <div class=""><a href="{{ route('novedad.banner.edit') }}">Editar portada</a></div>
                            <div class=""><a href="{{ route('novedad.create') }}">Crear novedad</a></div>                            
                            <div class=""><a href="{{ route('novedad.show') }}">Editar novedades</a></div>            
                        </div>          
                    </li>
                    <li><a class="collapsible-header waves-effect waves-admin"><i class="material-icons">message</i>Contacto</a>
                        <div class="collapsible-body">
                            <div class=""><a href="{{ route('contacto.edit') }}">Términos y condiciones</a></div>             
                        </div>          
                    </li>
                    <li><a class="collapsible-header waves-effect waves-admin"><i class="material-icons">local_atm</i>Presupuesto</a>
                        <div class="collapsible-body">
                            <div class=""><a href="{{ route('presupuesto.banner.edit') }}">Editar portada</a></div>             
                        </div>          
                    </li>
                    <li><a class="collapsible-header waves-effect waves-admin"><i class="material-icons">collections</i>Logos</a>  
                        <div class="collapsible-body">            
                            <div class=""><a href="{{ route('logos.index') }}">Editar logos</a>
                        </div>
                    </li>
                    <li><a class="collapsible-header waves-effect waves-admin"><i class="tiny material-icons">view_headline</i>Datos de la empresa</a>
                        <div class="collapsible-body"> 
                            <div class=""><a href="{{ route('datos.index') }}">Editar datos</a></div>
                        </div>
                    </li>
                    <li><a class="collapsible-header waves-effect waves-admin"><i class="material-icons">pin_drop</i>Metadatos</a>
                        <div class="collapsible-body">
                            <div class=""><a href="{{ route('metadatos.index') }}">Editar metadatos</a></div>
                        </div>
                    </li>               
                    <li><a class="collapsible-header waves-effect waves-admin"><i class="material-icons">account_circle</i>Usuarios</a>
                        <div class="collapsible-body">
                            <div class=""><a href="{{ route('usuarios.create') }}">Crear usuario</a></div>
                            <div class=""><a href="{{ route('usuarios.index') }}">Editar usuario</a></div>
                        </div>
                    </li>
                </ul>
            </div>
    <div id="page-wrapper">
        <nav class="z-depth-0 col s9 push-s3" style="padding: 0;">
            <div class="nav-wrapper nave ">
                <ul class="hide-on-med-and-down" style="margin: 0 10%;">

                    <li> @yield('titulo')</li>
                    <li class="right"><a class="dropdown-trigger" href="{{route('adm.logout')}}" data-target="dropdown1">Cerrar Sesión</a></li>
                </ul>
            </div>
        </nav>
            <div class="col s9 push-s3" style="padding: 40px;">
                @yield('cuerpo')
            </div>                             
    </div>
</div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <!-- Materialize Core JavaScript -->
    <script src="{{ asset('js/materialize/materialize.js') }}"></script>
    <script type="text/javascript">
    $(document).ready(function()
    {
        $('.collapsible').collapsible();
        $('select').material_select();
        $('.datepicker').pickadate({

            format: 'dd/mm/yy'
        });
    });
    </script>
     <script type="text/javascript">
        $('.confirmar').click(function(event) {
            if(!confirm('¿Esta seguro que desea borrar este elemento?'))
            {
                event.preventDefault();
            }
        });
    </script>
</body>
</html>
