<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PostController extends Controller {

    //文章列表页
    public function index() {
        return view('post/index');
    }

    //文章详情页
    public function show() {
        return view('post/show');
    }

    //文章添加页
    public function create() {
        return view('post/create');
    }

    //文章添加逻辑
    public function store() {

    }

    //文章编辑页
    public function edit() {
        return view('post/edit');
    }

    //文章编辑逻辑
    public function update() {

    }

    //文章删除页
    public function delete() {

    }
}
