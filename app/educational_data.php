<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class educational_data extends Model
{
     //table name
  protected $table = 'educational_data';
  //primary key
  public $primaryKey = 'DCTN_ID';
  //timestamps
  public $timestamp = true;
}
