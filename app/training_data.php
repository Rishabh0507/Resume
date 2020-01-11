<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class training_data extends Model
{
    //table name
  protected $table = 'training_data';
  //primary key
  public $primaryKey = 'TRNNG_ID';
  //timestamps
  public $timestamp = true;
}
