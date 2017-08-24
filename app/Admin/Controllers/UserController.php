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

    //用户-角色页面
    public function role(\App\AdminUser $user) {
        $roles = \App\AdminRole::all();
        $myRoles = $user->roles;
        return view('/admin/user/role', compact('roles', 'myRoles', 'user'));
    }

    //用户-角色操作
    public function storeRole(\App\AdminUser $user) {
        $this->validate(request(), [
            'roles' => 'required|array'
        ]);

        $roles = \App\AdminRole::findMany(request('roles'));
        $myRoles = $user->roles;

        //要增加的
        $addRoles = $roles->diff($myRoles);
        foreach ($addRoles as $role) {
            $user->assignRole($role);
        }

        //要删除的
        $deleteRole = $myRoles->diff($roles);
        foreach ($deleteRole as $role) {
            $user->delete($role);
        }

        return back();
    }

}