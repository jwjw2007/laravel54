<?php
namespace App\Admin\Controllers;

use \App\AdminUser;

class TopicController extends Controller {

    public function index() {
        $topics = \App\Topic::all();
        return view('/admin/topic/index', compact('topics'));
    }

    public function create() {
        return view('/admin/topic/create');
    }

    public function store() {
        $this->validate(request(), [
            'name' => 'required|string'
        ]);

        \App\Topic::create(request(['name']));

        return redirect('/admin/topics');
    }

    public function destroy(\App\Topic $topic) {
        $topic->delete();
        return [
            'error' => 0,
            'msg' => ''
        ];
    }


}