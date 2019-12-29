<?php

namespace App\Http\Controllers\adm;

use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Extensions\Helpers;
use Laracasts\Flash\Flash;
use App\Banner;
use Redirect;

class BannerController extends Controller
{

    public function store(Request $request)
    {
        $datos = $request->all();

       	$file_save = Helpers::saveImage($request->file('image'), 'banners');
        $file_save ? $datos['image'] = $file_save : false;

        Banner::create($datos);
        $success = 'Banner creado correctamente';

        return back()->with('success', $success);
    }

    public function update(Request $request, $id)
    {
    	$slider = Banner::find($id);
        $datos = $request->all();

        $file_save = Helpers::saveImage($request->file('image'), 'banners');
        $file_save ? $datos['image'] = $file_save : false;
       
        $slider->fill($datos);
        $slider->save();
        $success = 'Banner editado correctamente';
        return back()->with('success', $success);
    }

    public function destroy($id)
    {
        $slider = Banner::find($id);
        $slider->delete();
        $success = 'Banner eliminado correctamente';
        return back()->with('success', $success);
    }

}