<?php

namespace App\Http\Controllers\page;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Metadato;
use App\Novedad;
use App\Banner;

class NovedadController extends Controller
{
    public function index()
    {
    	$portada = Banner::where('section', 'novedad')->first();
    	$metadatos = Metadato::where('section','novedad')->get();
    	$novedades = Novedad::orderBy('order', 'asc')->get();
    	$active = 'novedad';
    	return view('page.novedades',compact('portada', 'metadatos', 'active', 'novedades'));
    }

    public function novedad($id)
    {
    	$novedad = Novedad::find($id);
        $portada = Banner::where('section', 'novedad')->first();
        $metadatos = Metadato::where('section','novedad')->get();
    	$active = 'novedad';
    	return view('page.novedad',compact('portada', 'metadatos', 'active', 'novedad'));
    }
}
