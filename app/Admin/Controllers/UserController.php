<?php
namespace App\Admin\Controllers;

use \App\AdminUser;

class UserController extends Controller {

    //列表
    public function index() {
        $users = AdminUser::paginate(10);
        return view('/admin/user/index', compact('users'));
    }

    //添加页面
    public function create() {
        return view('/admin/user/create');
    }

    //保存
    public function store() {
        $this->validate(request(), [
            'name' => 'required|min:3',
            'password' => 'required'
        ]);

        $name = request('name');
        $password = bcrypt(request('password'));
        \App\AdminUser::create(compact('name', 'password'));

        return redirect('/admin/users');
    }
}