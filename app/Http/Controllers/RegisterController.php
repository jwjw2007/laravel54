<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class RegisterController extends Controller {
    //注册页面
    public function index() {
        return view('register.index');
    }

    //注册行为
    public function register() {
        //验证
        $this->validate(request(), [
            'name' => 'required|min:3|unique:users,name',
            'email' => 'required|unique:users,email|email',
            'password' => 'required|min:5|confirmed'
        ]);
        //业务逻辑
        $name = request('name');
        $email = request('email');
        $password = bcrypt(request('password'));
        User::create(compact('name', 'email', 'password'));
        //渲染
        return redirect('/login');
    }
}
