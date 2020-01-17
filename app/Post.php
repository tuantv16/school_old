<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $table = 'post';
    protected $fillable = ['title','content','author','	mime','original_filename','filename','category_id','slug','del_flag'];
    public $timestamps = false;
}
