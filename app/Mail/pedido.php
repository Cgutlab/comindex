<?php

namespace App\Mail;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;

class pedido extends Mailable

{
    use Queueable, SerializesModels;

    public function __construct($producto, $cantidad, $nombre, $localidad, $email, $telefono, $mensaje)

    {
        $this->producto = $producto;
        $this->cantidad = $cantidad;
        $this->nombre = $nombre;
        $this->localidad = $localidad;
        $this->email = $email;
        $this->telefono = $telefono;
        $this->mensaje = $mensaje;
    }

    public function build()

    {
        return $this->view('page.enviarpedido')->with([
                        'producto' => $this->producto,
                        'cantidad' => $this->cantidad,
                        'nombre' => $this->nombre,
                        'localidad' => $this->localidad,
                        'email' => $this->email,
                        'telefono' => $this->telefono,
                        'mensaje' => $this->mensaje    
                        ]);

    }

}

