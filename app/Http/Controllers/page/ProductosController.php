<?php

namespace App\Http\Controllers\page;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Subfamilia;
use App\Metadato;
use App\Producto;
use App\Familia;
use App\Galeria;
use App\Marca;

class ProductosController extends Controller
{
    public function familia()
    {
    	$metadatos = Metadato::where('section','producto')->get();
    	$familias = Familia::orderBy('order','ASC')->get();
    	$marcas = Marca::orderBy('order','ASC')->get();
    	$productos = Producto::all();
		$active = 'producto';
    	return view('page.familia', compact('metadatos', 'active', 'marcas', 'familias', 'productos'));
    }

    public function subfamilia($id)
    {
    	$subfamilias = Subfamilia::where('family_id',$id)->orderBy('order','ASC')->get();
    	$metadatos = Metadato::where('section','producto')->get();
    	$familias = Familia::orderBy('order','ASC')->get();
    	$marcas = Marca::orderBy('order','ASC')->get();
    	$productos = Producto::where('family_id',$id)->orderBy('order','ASC')->get();
		$active = 'producto';
    	return view('page.subfamilia', compact('metadatos', 'active', 'marcas', 'familias', 'productos', 'subfamilias'));
    }

    public function productos($id)
    {
    	$producto = Producto::where('subfamily_id',$id)->first();
        $productos = Producto::where('subfamily_id',$id)->orderBy('order','ASC')->get();
    	$metadatos = Metadato::where('section','producto')->get();
        $subfamilias = Subfamilia::orderBy('order','ASC')->get();
    	$familias = Familia::orderBy('order','ASC')->get();
    	$marcas = Marca::orderBy('order','ASC')->get();
		$active = 'producto';
    	return view('page.productos', compact('metadatos', 'active', 'marcas', 'familias', 'productos', 'producto','subfamilias'));
    }

    public function producto($id)
    {
        $subfamilias = Subfamilia::orderBy('order','ASC')->get();
    	$metadatos = Metadato::where('section','producto')->get();
    	$productos = Producto::orderBy('order','ASC')->get();
    	$familias = Familia::orderBy('order','ASC')->get();
    	$marcas = Marca::orderBy('order','ASC')->get();
        $galerias = Galeria::where('producto_id', $id)->get();
    	$producto = Producto::find($id);
		$active = 'producto';
    	return view('page.producto', compact('metadatos', 'active', 'marcas', 'familias', 'productos', 'producto', 'galerias', 'subfamilias'));
    }
}
