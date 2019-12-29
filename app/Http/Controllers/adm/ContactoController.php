<?php

namespace App\Http\Controllers\adm;

use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Legal;
use Redirect;

class ContactoController extends Controller
{
     public function edit(){
        $usuario = Auth::user();
        $legal = Legal::find(1);
        $legal_seccion = 'active';
        $legal_contenido_edit = 'active';

        return view('adm.contacto.editarContenido',  compact('usuario', 'legal', 'legal_contenido_edit', 'legal_seccion'));
    }

    public function update(Request $request, $id){
        $datos = $request->all();
        $legal = Legal::find($id);
        $legal->fill($datos);
        $legal->save();
        $success = 'Términos y condiciones editados correctamente';
        return back()->with('success', $success);
    }

}
