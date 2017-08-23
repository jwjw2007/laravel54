<?php
namespace App\Admin\Controllers;

use \App\AdminUser;

class PermissionController extends Controller {

    //列表
    public function index() {
        return view('/admin/permission/index');
    }

    //添加页面
    public function create() {
        return view('/admin/permission/add');
    }

    //添加操作
    public function store() {

    }
}