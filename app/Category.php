<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'category';
    protected $fillable = ['id','category_nm','parent_id','slug','del_flg'];
    public $timestamps = false;
}
