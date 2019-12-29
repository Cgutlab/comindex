<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
	protected $fillable = [
    'code', 'name', 'image', 'descripcion', 'family_id', 'important', 'pdf', 'keyword', 'route', 'brand_id', 'subfamily_id', 'order', 'model',
    ];

    public function marca() {
        return $this->Belongsto('App\Marca','brand_id');
    }

    public function subfamilia() {
        return $this->Belongsto('App\Subfamilia','subfamily_id');
    }
}
