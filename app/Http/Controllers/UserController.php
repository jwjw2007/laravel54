<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class UserController extends Controller {
    //个人设置
    public function setting() {
        return view('user.setting');
    }

    //个人设置
    public function settingStore() {

    }
}
