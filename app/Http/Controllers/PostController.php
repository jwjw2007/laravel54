<?php

namespace App\Http\Controllers;

use App\Comment;
use App\Post;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PostController extends Controller {

    //文章列表页
    public function index() {
        $posts = Post::orderBy('created_at', ' desc')
            ->withCount('comments')
            ->paginate(6);
        return view('post/index', compact('posts'));
    }

    //文章详情页
    public function show(Post $post) {
        //文章评论
        $post->load('comments');
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
        $user_id = \Auth::id();
        $params = array_merge(request(['title', 'content']), compact('user_id'));
        Post::create($params);
        //渲染
        return redirect('posts');
    }

    //文章编辑页
    public function edit(Post $post) {
        return view('post/edit', compact('post'));
    }

    //文章编辑逻辑
    public function update(Post $post) {
        //验证
        $this->validate(request(), [
            'title' => 'required|string|max:100|min:5',
            'content' => 'required|string|min:10'
        ]);
        $this->authorize('update', $post);
        //逻辑
        $post->title = request('title');
        $post->content = request('content');
        $post->save();
        //渲染
        return redirect('/posts/' . $post->id);
    }

    //文章删除页
    public function delete(Post $post) {
        //TODO:: 用户权限认证
        $this->authorize('delete', $post);
        $post->delete();
        return redirect('/posts');
    }

    //图片上传
    public function imageUpload(Request $request) {
        $path = $request->file('wangEditorH5File')->storePublicly(md5(time()));
        return asset('storage/' . $path);
    }

    //提交评论
    public function comment(Post $post) {
        //验证
        $this->validate(request(), [
            'content' => 'required|min:3'
        ]);
        //逻辑
        $comment = new Comment();
        $comment->user_id = \Auth::id();
        $comment->post_id = $post->id;
        $comment->content = request('content');
        $post->comments()->save($comment);
        //渲染
        return back();

    }

}
