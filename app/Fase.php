<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Fase extends Model
{
    protected $table = 'fase';
	
	protected $fillable = ['name', 'urutan'];
}
