<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\Dato;
use App\Logo;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);
        $mapa = Dato::where('type', 'mapa')->first();
        $correo = Dato::where('type', 'correo')->first();
        $horario = Dato::where('type', 'horario')->first();
        $logoh = Logo::where('section','header')->first();
        $logof = Logo::where('section','footer')->first();
        $telefono = Dato::where('type', 'telefono')->first();
        $telefono2 = Dato::where('type', 'telefono2')->first();
        $whatsapp = Dato::where('type', 'whatsapp')->first();
        $ubicacion = Dato::where('type', 'direccion')->first();

         view()->share(compact('correo', 'ubicacion', 'telefono', 'telefono2', 'mapa', 'logof', 'logoh', 'horario', 'whatsapp'));
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
