<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Legal extends Model
{
	protected $table = 'legales';

	protected $fillable = [
        'title', 'text',
    ];

}
