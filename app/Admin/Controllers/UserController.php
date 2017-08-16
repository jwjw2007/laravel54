<?php
namespace App\Admin\Controllers;

class UserController extends Controller {

    //列表
    public function index() {
        return view('/admin/user/index');
    }

    //添加页面
    public function create() {
        return view('/admin/user/create');
    }

    //保存
    public function store() {

    }
}