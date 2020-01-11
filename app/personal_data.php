<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class personal_data extends Model
{
   //table name
   protected $table = 'personal_data';
   //primary key
   public $primaryKey = 'RSM_ID';
   //timestamps
   public $timestamp = true;
}
