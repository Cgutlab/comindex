<?php



namespace App\Http\Controllers\adm;



use Illuminate\Http\Request;

use App\Http\Controllers\Controller;

use App\Producto;



class ExcelController extends Controller

{

    public function importCat(Request $request)

{

    \Excel::load($request->excel, function($reader) {



        $excel = $reader->get();



        // iteracción

        $reader->each(function($row) {

            $pro_ref = Producto::Find($row->codigo);

            if(!isset($pro_ref)){

                $producto = new Producto;

                $producto->code = $row->codigo;
                
                $producto->name = $row->nombre;

                $producto->descripcion = $row->descripcion;

                $producto->brand_id = $row->marca;

                $producto->family_id = $row->familia;

                $producto->subfamily_id = $row->subfamilia;

                $producto->image = $row->imagen.'.jpg';

                $producto->save();

            }else{


                $producto->code = $row->codigo;

                $pro_ref->name = $row->nombre;

                $pro_ref->descripcion = $row->descripcion;

                $pro_ref->brand_id = $row->marca_id;

                $producto->family_id = $row->familia;

                $pro_ref->subfamily_id = $row->subfamilia;

                $pro_ref->image = $row->imagen.'.jpg';

                $pro_ref->update();

            }



        });

    

    });



    return redirect()->route('excelcat');

    }

    public function Excel()
    {
        return view('adm.excel.carga');
    }

}





/*-----CARGA DE EXCELS-----------

    Route::get('excelcat', ['uses' => 'Adm\CategoriasController@excelcat', 'as' => 'excelcat']);

    Route::post('/import-excel', 'Adm\ExcelController@importCat')->name('importCat');*/