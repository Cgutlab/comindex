<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Familia extends Model
{
    protected $fillable = [
    	'title', 'image', 'order',
    ];

     public function productos() {
    	return $this->Hasmany('App\Producto','family_id');
	}
}
