<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::post('contacto/enviar', ['uses' => 'page\ContactoController@enviarMail', 'as' => 'contacto.enviar']);

Route::get('/', function () {
    return view('page/home');
});

	Route::get('/', ['uses' => 'page\HomeController@index', 'as' => 'home']);
	Route::get('empresa', ['uses' => 'page\EmpresaController@index', 'as' => 'empresa']);
	Route::get('familias', ['uses' => 'page\ProductosController@familia', 'as' => 'familia']);
	Route::get('familia/{id}', ['uses' => 'page\ProductosController@subfamilia', 'as' => 'subfamilia']);
	Route::get('subfamilia/{id}', ['uses' => 'page\ProductosController@productos', 'as' => 'productos']);
	Route::get('producto/{id}', ['uses' => 'page\ProductosController@producto', 'as' => 'producto']);
	Route::get('descarga', ['uses' => 'page\DescargaController@index', 'as' => 'descarga']);
	Route::get('novedades', ['uses' => 'page\NovedadController@index', 'as' => 'novedades']);
	Route::get('novedad/{id}', ['uses' => 'page\NovedadController@novedad', 'as' => 'novedad']);
	Route::get('contacto', ['uses' => 'page\ContactoController@index', 'as' => 'contacto']);
	Route::get('/busca',['uses'=>'page\BuscarController@index',	'as'=>'buscar' ]);
	Route::post('/buscador',['uses'=>'page\BuscarController@getResults', 'as'=>'buscador']);
	Route::get('presupuesto', ['uses' => 'page\PresupuestoController@carrito', 'as' => 'presupuesto']);
	Route::post('filter', ['uses' => 'page\BuscarController@filter', 'as' => 'filter']);
	Route::group(['prefix' => 'carrito'], function() {
		Route::post('add', ['uses' => 'page\PresupuestoController@add', 'as' => 'carrito.add']);
		Route::get('delete/{id}', ['uses' => 'page\PresupuestoController@delete', 'as' => 'carrito.delete']);
		Route::post('enviar', ['uses' => 'page\PresupuestoController@send', 'as' => 'carrito.enviar']);
	});


	Route::group(['prefix' => 'adm'], function() {
			Route::resource('login', 'adm\LoginController');
			Route::get('logout', ['uses' => 'adm\LoginController@logout' , 'as' => 'adm.logout']);
		});

	Route::group(['prefix' => 'adm', 'middleware' => 'guest'], function() {

		Route::get('/', function() {
			$usuario = Auth::user();
			return view('adm.index', compact('usuario'));
		});

		Route::resource('metadatos', 'adm\MetadatosController');
		Route::resource('usuarios', 'adm\UserController');
		Route::resource('slider', 'adm\SliderController');
		Route::resource('banner', 'adm\BannerController');
		Route::resource('datos', 'adm\DatosController');
		Route::resource('logos', 'adm\LogosController');

		Route::get('excelcat', ['uses' => 'adm\ExcelController@excel', 'as' => 'excelcat']);
    	Route::post('/import-excel', 'adm\ExcelController@importCat')->name('importCat');

	Route::group(['prefix' => 'home', 'as' => 'home'], function() {		
		Route::group(['prefix' => 'slider'], function() {
			Route::get('create',  ['uses' => 'adm\HomeController@crearSlider', 'as' => '.slider.create']);
			Route::get('show',  ['uses' => 'adm\HomeController@editarSliders', 'as' => '.slider.show']);
			Route::get('edit/{id}', ['uses' => 'adm\HomeController@editarSlider', 'as' => '.slider.edit']);
			Route::put('update/{id}',  ['uses' => 'adm\HomeController@updateSlider', 'as' => '.slider.update']);
		});

		Route::group(['prefix' => 'destacados'], function() {
			Route::get('show',  ['uses' => 'adm\HomeController@editarDestacados', 'as' => '.destacado.show']);
			Route::get('edit/{id}', ['uses' => 'adm\HomeController@editarDestacado', 'as' => '.destacado.edit']);
			Route::put('update/{id}',  ['uses' => 'adm\HomeController@updateDestacado', 'as' => '.destacado.update']);
		});

		Route::group(['prefix' => 'contenido', 'as' => 'contenido'], function() {
			Route::get('edit', ['uses' => 'adm\HomeController@editarContenido', 'as' => '.edit']);
			Route::put('update/{id}', ['uses' => 'adm\HomeController@updateContenido', 'as' => '.update']);
		});

		Route::group(['prefix' => 'icono', 'as' => 'icono'], function() {
			Route::get('show',  ['uses' => 'adm\HomeController@editarIconos', 'as' => '.show']);
			Route::get('edit/{id}', ['uses' => 'adm\HomeController@editarIcono', 'as' => '.edit']);
			Route::put('update/{id}', ['uses' => 'adm\HomeController@updateIcono', 'as' => '.update']);
		});

		Route::group(['prefix' => 'contenido', 'as' => 'contenido'], function() {
			Route::get('edit', ['uses' => 'adm\HomeController@editarContenido', 'as' => '.edit']);
			Route::put('update/{id}', ['uses' => 'adm\HomeController@updateContenido', 'as' => '.update']);
		});

		Route::group(['prefix' => 'marcas'], function() {
				Route::get('show',  ['uses' => 'adm\HomeController@editarMarcas', 'as' => '.marca.show']);
				Route::get('edit/{id}', ['uses' => 'adm\HomeController@editarMarca', 'as' => '.marca.edit']);
				Route::put('update/{id}',  ['uses' => 'adm\HomeController@updateMarca', 'as' => '.marca.update']);
		});
	});

	Route::group(['prefix' => 'producto', 'as' => 'producto'], function() {	
		Route::get('create',  ['uses' => 'adm\ProductoController@createProducto', 'as' => '.create']);
			Route::post('store',  ['uses' => 'adm\ProductoController@storeProducto', 'as' => '.store']);
			Route::get('select',  ['uses' => 'adm\ProductoController@selectProducto', 'as' => '.select']);
			Route::post('show',  ['uses' => 'adm\ProductoController@showProducto', 'as' => '.show']);
			Route::get('edit/{id}', ['uses' => 'adm\ProductoController@editProducto', 'as' => '.edit']);
			Route::put('update/{id}',  ['uses' => 'adm\ProductoController@updateProducto', 'as' => '.update']);
			Route::delete('destroy/{id}',  ['uses' => 'adm\ProductoController@destroyProducto', 'as' => '.destroy']);

		Route::group(['prefix' => 'galeria', 'as' => 'galeria'], function() {
			Route::get('create',  ['uses' => 'adm\ProductoController@crearGaleria', 'as' => '.create']);
			Route::post('store',  ['uses' => 'adm\ProductoController@storeGaleria', 'as' => '.store']);
			Route::get('show/{id}',  ['uses' => 'adm\ProductoController@Galerias', 'as' => '.show']);
			Route::get('edit/{id}', ['uses' => 'adm\ProductoController@Galeria', 'as' => '.edit']);
			Route::put('update/{id}',  ['uses' => 'adm\ProductoController@updateGaleria', 'as' => '.update']);
			Route::delete('destroy/{id}',  ['uses' => 'adm\ProductoController@destroyGaleria', 'as' => '.destroy']);
		});

		Route::group(['prefix' => 'familia'], function() {
			Route::get('create',  ['uses' => 'adm\ProductoController@createFamilia', 'as' => '.familia.create']);
			Route::post('store',  ['uses' => 'adm\ProductoController@storeFamilia', 'as' => '.familia.store']);
			Route::get('show',  ['uses' => 'adm\ProductoController@showFamilia', 'as' => '.familia.show']);
			Route::get('edit/{id}', ['uses' => 'adm\ProductoController@editFamilia', 'as' => '.familia.edit']);
			Route::put('update/{id}',  ['uses' => 'adm\ProductoController@updateFamilia', 'as' => '.familia.update']);
			Route::delete('destroy/{id}',  ['uses' => 'adm\ProductoController@destroyFamilia', 'as' => '.familia.destroy']);
		});

		Route::group(['prefix' => 'subfamilia'], function() {
			Route::get('create',  ['uses' => 'adm\ProductoController@createSubfamilia', 'as' => '.subfamilia.create']);
			Route::post('store',  ['uses' => 'adm\ProductoController@storeSubfamilia', 'as' => '.subfamilia.store']);
			Route::get('select',  ['uses' => 'adm\ProductoController@selectSubfamilia', 'as' => '.subfamilia.select']);
			Route::post('show',  ['uses' => 'adm\ProductoController@showSubfamilia', 'as' => '.subfamilia.show']);
			Route::get('edit/{id}', ['uses' => 'adm\ProductoController@editSubfamilia', 'as' => '.subfamilia.edit']);
			Route::put('update/{id}',  ['uses' => 'adm\ProductoController@updateSubfamilia', 'as' => '.subfamilia.update']);
			Route::delete('destroy/{id}',  ['uses' => 'adm\ProductoController@destroySubfamilia', 'as' => '.subfamilia.destroy']);
		});		

		Route::group(['prefix' => 'marca'], function() {
			Route::get('create',  ['uses' => 'adm\ProductoController@createMarca', 'as' => '.marca.create']);
			Route::post('store',  ['uses' => 'adm\ProductoController@storeMarca', 'as' => '.marca.store']);
			Route::get('show',  ['uses' => 'adm\ProductoController@showMarca', 'as' => '.marca.show']);
			Route::get('edit/{id}', ['uses' => 'adm\ProductoController@editMarca', 'as' => '.marca.edit']);
			Route::put('update/{id}',  ['uses' => 'adm\ProductoController@updateMarca', 'as' => '.marca.update']);
			Route::delete('destroy/{id}',  ['uses' => 'adm\ProductoController@destroyMarca', 'as' => '.marca.destroy']);
		});
	});

		Route::group(['prefix' => 'contacto', 'as' => 'contacto'], function() {
			Route::get('edit', ['uses' => 'adm\ContactoController@edit', 'as' => '.edit']);
			Route::put('update/{id}',  ['uses' => 'adm\ContactoController@update', 'as' => '.update']);
		});

	Route::group(['prefix' => 'empresa', 'as' => 'empresa'], function() {
			Route::get('edit', ['uses' => 'adm\EmpresaController@editarContenido', 'as' => '.edit']);
			Route::put('update/{id}', ['uses' => 'adm\EmpresaController@updateContenido', 'as' => '.contenido.update']);

		Route::group(['prefix' => 'slider'], function() {
			Route::get('create',  ['uses' => 'adm\EmpresaController@crearSlider', 'as' => '.slider.create']);
			Route::get('show',  ['uses' => 'adm\EmpresaController@editarSliders', 'as' => '.slider.show']);
			Route::get('edit/{id}', ['uses' => 'adm\EmpresaController@editarSlider', 'as' => '.slider.edit']);
			Route::put('update/{id}',  ['uses' => 'adm\EmpresaController@updateSlider', 'as' => '.slider.update']);
		});
	});

	Route::group(['prefix' => 'descarga'], function() {
			Route::get('create',  ['uses' => 'adm\DescargasController@create', 'as' => 'descarga.create']);
			Route::post('store',  ['uses' => 'adm\DescargasController@store', 'as' => 'descarga.store']);
			Route::get('show',  ['uses' => 'adm\DescargasController@editar', 'as' => 'descarga.show']);
			Route::get('edit/{id}', ['uses' => 'adm\DescargasController@edit', 'as' => 'descarga.edit']);
			Route::put('update/{id}',  ['uses' => 'adm\DescargasController@update', 'as' => 'descarga.update']);
			Route::delete('destroy/{id}',  ['uses' => 'adm\DescargasController@destroy', 'as' => 'descarga.destroy']);

	Route::group(['prefix' => 'banner'], function() {
			Route::get('edit',  ['uses' => 'adm\DescargasController@editarBanner', 'as' => 'descarga.banner.edit']);
		});
	});

	Route::group(['prefix' => 'novedad'], function() {
			Route::get('create',  ['uses' => 'adm\NovedadController@create', 'as' => 'novedad.create']);
			Route::post('store',  ['uses' => 'adm\NovedadController@store', 'as' => 'novedad.store']);
			Route::get('show',  ['uses' => 'adm\NovedadController@show', 'as' => 'novedad.show']);
			Route::get('edit/{id}', ['uses' => 'adm\NovedadController@edit', 'as' => 'novedad.edit']);
			Route::put('update/{id}',  ['uses' => 'adm\NovedadController@update', 'as' => 'novedad.update']);
			Route::delete('destroy/{id}',  ['uses' => 'adm\NovedadController@destroy', 'as' => 'novedad.destroy']);

	Route::group(['prefix' => 'banner'], function() {
			Route::get('edit',  ['uses' => 'adm\NovedadController@editarBanner', 'as' => 'novedad.banner.edit']);
		});
	});

	Route::group(['prefix' => 'presupuesto'], function() {
		Route::group(['prefix' => 'banner'], function() {
			Route::get('edit',  ['uses' => 'adm\PresupuestoController@editarBanner', 'as' => 'presupuesto.banner.edit']);
		});
	});
});

