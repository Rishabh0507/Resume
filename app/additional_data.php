<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class additional_data extends Model
{
     //table name
  protected $table = 'additional_data';
  //primary key
  public $primaryKey = 'ADDTNL_ID';
  //timestamps
  public $timestamp = true;
}
