<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Marca extends Model
{
	protected $fillable = [	
    	'title', 'image', 'important', 'route', 'order',
	];
}
