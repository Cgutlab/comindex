<?php

namespace App\Http\Controllers\page;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Descarga;
use App\Metadato;
use App\Banner;

class DescargaController extends Controller
{
    public function index()
    {
    	$portada = Banner::where('section', 'descarga')->first();
    	$metadatos = Metadato::where('section','descarga')->get();
    	$descargas = Descarga::orderBy('order', 'asc')->get();
    	$active = 'descarga';
    	return view('page.descarga',compact('portada', 'metadatos', 'active', 'descarga', 'descargas'));
    }
}
