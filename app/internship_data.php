<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class internship_data extends Model
{
        //table name
  protected $table = 'internship_data';
  //primary key
  public $primaryKey = 'NTRNSHP_ID';
  //timestamps
  public $timestamp = true;
}
