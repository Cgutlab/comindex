<?php

namespace App\Http\Controllers\page;

use Gloudemans\Shoppingcart\Facades\Cart;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Mail\Pedido;
use App\Producto;
use App\Metadato;
use App\Banner;
use App\Texto;
use Redirect;

class PresupuestoController extends Controller
{
    public function carrito()
    {
    	$banner = Banner::where('section','presupuesto')->first();
        $active = 'presupuesto';
        $metadatos = Metadato::where('section','presupuesto');
        $texto = Texto::where('section', 'presupuesto')->first();
        return view('page.presupuesto', compact('active','metadatos', 'banner', 'texto'));
    }

    function send(Request $request)
    {
            $active = 'presupuesto';
            $metadatos = Metadato::where('section', 'presupuesto')->get();
            $texto = Texto::where('section', 'presupuesto')->first();
            $banner = Banner::where('section', 'presupuesto')->first();
            $producto = Producto::find($request->id);
            foreach(Cart::content()  as $row)
            {
                $producto = $row->name;
                $cantidad = $row->qty;
            }
            $nombre = $request->input('nombres');
            $localidad = $request->input('localidad');
            $email = $request->input('email');
            $telefono = $request->input('telefono');
            $mensaje = $request->input('mensaje');
            Mail::to('franco.gib11@gmail.com')->send(new pedido($producto, $cantidad, $nombre, $localidad, $email, $telefono, $mensaje));
            //Mail::to('franco.gib11@gmail.com')->send(new pedido($producto, $cantidad, $precio, $subtotal, $total, $mensaje));
            if (count(Mail::failures()) > 0) {

                $success = 'Ha ocurrido un error al enviar el correo';

            }else{

                $success = 'Pedido enviado correctamente';

            }

        Cart::destroy();
        return view('page.presupuesto', compact('active','producto', 'metadatos', 'banner', 'texto'))->with('success', $success);

    }

    public function add(Request $request)
    {
        $active= 'presupuesto';
        $producto = Producto::find($request->id);
        $metadatos = Metadato::where('section', 'presupuesto')->get();
        $texto = Texto::where('section', 'presupuesto')->first();
        $banner = Banner::where('section', 'presupuesto')->first();
        if($request->cantidad > 0)
        {
            Cart::add(['id' => $producto->id, 'name' => $producto->name, 'qty' => $request->cantidad, 'price' => 0, 'options' => ['imagen' => $producto->image, 'code' => $producto->code]]);
            return view('page.presupuesto', compact('active', 'producto', 'metadatos', 'banner', 'texto'));
        }
        else
        {
            return back();
        }
    }

    public function delete($id)
    {
        $active = 'presupuesto';
        $metadatos = Metadato::where('section', 'presupuesto')->get();
        $banner = Banner::where('section', 'presupuesto')->first();
        $texto = Texto::where('section', 'presupuesto')->first();
        Cart::remove($id);
        return view('page.presupuesto', compact('active', 'metadatos', 'banner', 'texto'));
    }
}
