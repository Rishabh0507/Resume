<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class skill_data extends Model
{
     //table name
  protected $table = 'skill_data';
  //primary key
  public $primaryKey = 'SKLL_ID';
  //timestamps
  public $timestamp = true;
}
