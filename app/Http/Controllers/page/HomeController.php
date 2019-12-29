<?php

namespace App\Http\Controllers\page;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Metadato;
use App\Producto;
use App\Familia;
use App\Slider;
use App\Texto;
use App\Icono;
use App\Marca;

class HomeController extends Controller
{
    public function index()
    {
    	$sliders = Slider::where('section','home')->orderBy('order','ASC')->get();
    	$metadatos = Metadato::where('section','home')->get();
    	$texto = Texto::where('section','home')->first();
    	$iconos = Icono::orderBy('order','ASC')->get();
    	$marcas = Marca::where('important', 1)->orderBy('order','ASC')->get();
        $destacados = Producto::where('important', 1)->get();
        $familias = Familia::orderBy('order','ASC')->get();
    	$active = 'home';
    	return view('page.home',compact('sliders', 'metadatos', 'active', 'texto', 'iconos', 'marcas', 'destacados', 'familias'));
    }
}
