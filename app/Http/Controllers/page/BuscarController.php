<?php

namespace App\Http\Controllers\page;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Subfamilia;
use App\Metadato;
use App\Producto;
use App\Familia;
use App\Marca;

class BuscarController extends Controller
{
    public function index() {
        $busca=0;
    	$metadato = Metadato::where('section','buscar')->first();
    	$active = 'buscar';
        return view('page.buscar', compact('metadato','active','busca'));
    }

    public function getResults (Request $request) {

        $busqueda = $request->busqueda;
        $busca=1;
        $active = 'buscar';
        $metadato = Metadato::where('section','buscar')->first();
        $productos = Producto::where('name', 'like', '%' . $busqueda . '%')->orwhere('code', 'like', '%' . $busqueda . '%')->orwhere('descripcion', 'like', '%' . $busqueda . '%')->orwhere('model', 'like', '%' . $busqueda . '%')->get();
        return view('page.buscar', compact('productos', 'busqueda', 'busca', 'metadato', 'active'));
    }

    public function filter (Request $request) {

        $subfamilias = Subfamilia::orderBy('order','ASC')->get();
        $familias = Familia::orderBy('order','ASC')->get();
        $marcas = Marca::orderBy('order','ASC')->get();
        $productos = Producto::all();
        $buscar = 0;
        $metadatos = Metadato::where('section','buscar')->get();
        $active = 'producto';
        if($request->input('familia')!='familia' && $request->input('familia')!='')
        {
            $consultas = Producto::where('family_id',$request->input('familia'))->get();
            $buscar = 1;
        }
        elseif($request->input('marca')!='marca' && $request->input('marca')!='')
        {
            $consultas = Producto::where('brand_id',$request->input('marca'))->get();  
            $buscar = 2; 
        } elseif($request->input('codigo')!='' && $request->input('codigo')!=null)
        {
            $consultas = Producto::where('code','like', '%'.$request->input('codigo').'%')->orwhere('name','like','%'.$request->input('codigo').'%')->get();
            $buscar = 2;
        }

        return view('page.filtrados', compact('consultas','buscar','productos','titulo','metadatos','active','familias','subfamilias','marcas','productos'));
    }
}
