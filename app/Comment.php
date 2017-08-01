<?php

namespace App;

use App\Model;

class Comment extends Model {
    
    //所属文章
    public function post() {
        return $this->belongsTo('App\Post','post_id','id');
    }
    
    //所属用户
    public function user() {
        return $this->belongsTo('App\User','user_id','id');
    }
}
