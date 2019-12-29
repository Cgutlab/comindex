<?php

namespace App\Http\Controllers\adm;

use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Extensions\Helpers;
use Laracasts\Flash\Flash;
use App\Producto;
use App\Slider;
use App\Marca;
use App\Icono;
use App\Texto;
use Redirect;

class HomeController extends Controller
{
    public function crearSlider(){
        $usuario = Auth::user();
        $sliders_seccion = 'active';
        $home_slider_create = 'active';
        return view('adm.home.crearSlider',  compact('usuario', 'sliders_seccion', 'home_slider_create'));
    }

    public function editarSliders(){
        $usuario = Auth::user();
        $sliders = Slider::where('section', 'home')->orderBy('order','ASC')->get();
        $sliders_seccion = 'active';
        $home_slider_edit = 'active';

        return view('adm.home.editarSliders',  compact('usuario', 'sliders', 'sliders_seccion', 'home_slider_edit'));
    }

    public function editarSlider($id){
        $usuario = Auth::user();
        $slider = Slider::find($id);
        $sliders_seccion = 'active';
        $home_slider_edit = 'active';

        return view('adm.home.editarSlider',  compact('usuario', 'slider', 'sliders_seccion', 'home_slider_edit'));
    }

    public function updateSlider(Request $request, $id)
    {
        $slider = Slider::find($id);
        $datos = $request->all();

        $file_save = Helpers::saveImage($request->file('image'), 'sliders');
        $file_save ? $datos['image'] = $file_save : false;
       
        $slider->fill($datos);
        $slider->save();
        $success = 'Slider editado correctamente';
        return back()->with('success', $success);
    }

    public function editarDestacados()
    {
        $usuario = Auth::user();
        $destacados = Producto::orderBy('order','ASC')->get();
        $destacados_seccion = 'active';
        $home_destacado_edit = 'active';

        return view('adm.home.editarDestacados',  compact('usuario', 'destacados', 'destacados_seccion', 'home_destacado_edit'));
    }

    public function editarDestacado(Request $request, $id){
        $usuario = Auth::user();
        $destacado = Producto::find($id);

        $file_save = Helpers::saveImage($request->file('image'), 'destacados');
        $file_save ? $datos['image'] = $file_save : false;

        $destacados_seccion = 'active';
        $home_destacado_edit = 'active';

        return view('adm.home.editarDestacado',  compact('usuario', 'destacado', 'destacados_seccion', 'home_destacado_edit'));
    }

    public function updateDestacado(Request $request, $id)
    {
        $destacado = Producto::find($id);
        $datos = $request->all();

        $file_save = Helpers::saveImage($request->file('image'), 'destacados');
        $file_save ? $datos['image'] = $file_save : false;

        $destacado->fill($datos);
        $destacado->save();
        $success = 'Destacado editado correctamente';
        return Redirect::to('adm/home/destacados/show')->with('success', $success);
    }

    public function editarContenido(){
        $usuario = Auth::user();
        $home = Texto::where('section','home')->first();
        $home_seccion = 'active';
        $home_contenido_edit = 'active';

        return view('adm.home.editarContenido',  compact('usuario', 'home', 'home_contenido_edit', 'home_seccion'));
    }

    public function updateContenido(Request $request, $id){
        $datos = $request->all();
        $home = Texto::find($id);

        $file_save = Helpers::saveImage($request->file('image'), 'home');
        $file_save ? $datos['image'] = $file_save : false;

        $home->fill($datos);
        $home->save();
        $success = 'Home editado correctamente';
        return back()->with('success', $success);
    }

    public function editarIconos()
    {
        $usuario = Auth::user();
        $iconos = Icono::where('section','home')->orderBy('order','ASC')->get();
        $iconos_seccion = 'active';
        $home_icono_edit = 'active';

        return view('adm.home.editarIconos',  compact('usuario', 'iconos', 'iconos_seccion', 'home_icono_edit'));
    }

    public function editarIcono(Request $request, $id){
        $usuario = Auth::user();
        $icono = Icono::find($id);

        $file_save = Helpers::saveImage($request->file('image'), 'icono');
        $file_save ? $datos['image'] = $file_save : false;

        $iconos_seccion = 'active';
        $home_icono_edit = 'active';

        return view('adm.home.editarIcono',  compact('usuario', 'icono', 'iconos_seccion', 'home_icono_edit'));
    }

    public function updateIcono(Request $request, $id)
    {
        $icono = Icono::find($id);
        $datos = $request->all();

        $file_save = Helpers::saveImage($request->file('image'), 'icono');
        $file_save ? $datos['image'] = $file_save : false;

        $icono->fill($datos);
        $icono->save();
        $success = 'Icono editado correctamente';
        return Redirect::to('adm/home/icono/show')->with('success', $success);
    }

    public function editarMarcas()
    {
        $usuario = Auth::user();
        $marcas = Marca::orderBy('order','ASC')->get();
        $marcas_seccion = 'active';
        $home_marca_edit = 'active';

        return view('adm.home.editarMarcas',  compact('usuario', 'marcas', 'marcas_seccion', 'home_marca_edit'));
    }

    public function editarMarca($id){
        $usuario = Auth::user();
        $marca = Marca::find($id);
        $marcas_seccion = 'active';
        $home_marca_edit = 'active';

        return view('adm.home.editarMarca',  compact('usuario', 'marca', 'marcas_seccion', 'home_marca_edit'));
    }

    public function updateMarca(Request $request, $id)
    {
        $marca = Marca::find($id);
        $datos = $request->all();
        $marca->fill($datos);
        $marca->save();
        $success = 'Marca editada correctamente';
        return Redirect::to('adm/home/marcas/show')->with('success', $success);
    }
}
