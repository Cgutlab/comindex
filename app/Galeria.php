<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Galeria extends Model
{
    protected $fillable = [
    	'image', 'order', 'producto_id',
    ];
}
