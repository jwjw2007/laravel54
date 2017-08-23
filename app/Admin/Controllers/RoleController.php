<?php
namespace App\Admin\Controllers;

use \App\AdminUser;

class RoleController extends Controller {

    //列表
    public function index() {
        return view('/admin/role/index');
    }

    //添加页面
    public function create() {
        return view('/admin/role/add');
    }

    //添加操作
    public function store() {

    }

    //角色-权限页面
    public function permission() {
        return view('/admin/role/permission');
    }

    //角色-权限添加
    public function storePermission() {

    }
}