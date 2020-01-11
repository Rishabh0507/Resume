<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class worksample_data extends Model
{
     //table name
  protected $table = 'worksample_data';
  //primary key
  public $primaryKey = 'WRK_ID';
  //timestamps
  public $timestamp = true;
}
