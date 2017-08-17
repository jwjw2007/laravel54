<?php

namespace App\Admin\Controllers;

use Illuminate\Http\Request;
use \App\Post;

class PostController extends Controller {

    //列表页
    public function index() {
        return view('admin.post.index');
    }

    //操作
    public function status(Request $request) {

    }

}