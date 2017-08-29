<?php
namespace App\Admin\Controllers;

use \App\AdminUser;

class NoticeController extends Controller {

    public function index() {
        $notices = \App\Notice::all();
        return view('/admin/notice/index', compact('notices'));
    }

    public function create() {
        return view('/admin/notice/create');
    }

    public function store() {
        $this->validate(request(), [
            'title' => 'required|string',
            'content' => 'required|string'
        ]);

        \App\Notice::create(request(['title', 'content']));

        return redirect('/admin/notices');
    }

}