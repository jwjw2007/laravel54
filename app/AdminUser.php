<?php

namespace App;

use App\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class AdminUser extends Authenticatable {
    //后台管理员登录去掉tolen字段验证
    protected $rememberTokenName = '';

    protected $guarded = [];
}
