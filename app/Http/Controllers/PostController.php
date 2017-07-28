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
        //验证
        $this->validate(request(), [
            'title' => 'required|string|max:100|min:5',
            'content' => 'required|string|min:10'
        ]);
        //逻辑
        Post::create(request(['title', 'content']));
        //渲染
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

    //图片上传
    public function imageUpload(Request $request) {
        $path = $request->file('wangEditorH5File')->storePublicly(md5(time()));
        return assert('storage/' . $path);
    }


}
