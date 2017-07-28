<?php

namespace App;

use Illuminate\Database\Eloquent\Model as BaseModel;

class Model extends BaseModel {
    protected $guarded=[];//禁止自动提交的字段
}
