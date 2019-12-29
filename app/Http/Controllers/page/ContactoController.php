<?php

namespace App\Http\Controllers\page;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use App\mail\Contanto;
use App\Metadato;
use App\Legal;
use App\Texto;

class ContactoController extends Controller
{
    public function index()
    {
    	$metadatos = Metadato::where('section','contacto')->get();
    	$legal = legal::first();
    	$texto = Texto::where('section','contacto')->first();
    	$active = 'contacto';
    	return view('page.contacto', compact('metadatos', 'legal', 'active', 'texto'));
    }

    public function enviarMail(Request $request) {

      $dato = Dato::where('type', 'correo')->first();
      $nombre = $request->input('nombre');
      $telefono = $request->input('telefono');
      $empresa = $request->input('empresa');
      $email = $request->input('email');
      $mensaje = $request->input('mensaje');
      Mail::to($dato->description)->send(new Contacto($nombre, $telefono, $empresa, $email, $mensaje));

      if (count(Mail::failures()) > 0) {

          $success = 'Ha ocurrido un error al enviar el correo';

      }else{

          $success = 'Correo enviado correctamente';

      }

      return back()->with('success', $success);

    }
}
