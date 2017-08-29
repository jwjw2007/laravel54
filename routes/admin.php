<?php

Route::group(['prefix' => 'admin'], function () {
    //登录页
    Route::get('/login', '\App\Admin\Controllers\LoginController@index')
        ->name('login');
    //登录
    Route::post('/login', '\App\Admin\Controllers\LoginController@login');
    //登出
    Route::get('/logout', '\App\Admin\Controllers\LoginController@logout');

    //需要登陆的
    Route::group(['middleware' => 'auth:admin'], function () {
        Route::get('/home', '\App\Admin\Controllers\HomeController@index');

        //路由中使用Gate
        Route::group(['middleware' => 'can:system'], function () {
            //管理人员
            Route::get('/users', '\App\Admin\Controllers\UserController@index');//列表
            Route::get('/users/create', '\App\Admin\Controllers\UserController@create');//添加
            Route::post('/users/store', '\App\Admin\Controllers\UserController@store');//保存
            Route::get('/users/{user}/role', '\App\Admin\Controllers\UserController@role');
            Route::post('/users/{user}/role', '\App\Admin\Controllers\UserController@storeRole');

            //角色
            Route::get('/roles', '\App\Admin\Controllers\RoleController@index');
            Route::get('/roles/create', '\App\Admin\Controllers\RoleController@create');
            Route::post('/roles/store', '\App\Admin\Controllers\RoleController@store');
            Route::get('/roles/{role}/permission', '\App\Admin\Controllers\RoleController@permission');
            Route::post('/roles/{role}/permission', '\App\Admin\Controllers\RoleController@storePermission');

            //权限
            Route::get('/permissions', '\App\Admin\Controllers\PermissionController@index');
            Route::get('/permissions/create', '\App\Admin\Controllers\PermissionController@create');
            Route::post('/permissions/store', '\App\Admin\Controllers\PermissionController@store');
        });

        Route::group(['middleware' => 'can:post'], function () {
            //审核模块
            Route::get('/posts', '\App\Admin\Controllers\PostController@index');
            Route::post('/posts/{post}/status', '\App\Admin\Controllers\PostController@status');
        });

        //专题管理(使用了资源路由)
        Route::group(['middleware' => 'can:topic'], function () {
            Route::resource('topics', '\App\Admin\Controllers\TopicController', ['only' => [
                'index', 'create', 'store', 'destroy'
            ]]);
        });

        //通知管理(使用了资源路由)
        Route::group(['middleware' => 'can:notice'], function () {
            Route::resource('notices', '\App\Admin\Controllers\NoticeController', ['only' => [
                'index', 'create', 'store'
            ]]);
        });

    });
});