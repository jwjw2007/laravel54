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
    Route::group(['middleware' => 'auth:admin'], function(){
        Route::get('/home', '\App\Admin\Controllers\HomeController@index');

        //管理人员
        //列表
        Route::get('/users','\App\Admin\Controllers\UserController@index');
        //添加
        Route::get('/users/create','\App\Admin\Controllers\UserController@create');
        //保存
        Route::get('/users/store','\App\Admin\Controllers\UserController@store');
    });
});