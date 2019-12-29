<?php

namespace App\Http\Controllers\adm;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Extensions\Helpers;
use Laracasts\Flash\Flash;
use App\Banner;
use Redirect;


class PresupuestoController extends Controller
{
    public function editarBanner(){
    $usuario = Auth::user();
    $banner = Banner::where('section', 'presupuesto')->first();
    $banners_seccion = 'active';
    $banner_edit = 'active';

    return view('adm.banner.editarBanner',  compact('usuario', 'banner', 'banners_seccion', 'banner_edit'));
    }
}
