<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PostController extends Controller {

    //文章列表页
    public function index() {
        $posts = Post::orderBy('created_at', ' desc')->paginate(6);
        return view('post/index', compact('posts'));
    }

    //文章详情页
    public function show(Post $post) {

        return view('post/show', compact('post'));
    }

    //文章添加页
    public function create() {
        return view('post/create');
    }

    //文章添加逻辑
    public function store() {
        Post::create(request(['title','content']));
        return redirect('posts');
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
