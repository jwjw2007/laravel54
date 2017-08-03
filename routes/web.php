<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


//注册页面
Route::get('/register','RegisterController@index');
//注册行为
Route::post('/register','RegisterController@register');
//登录页面
Route::get('/login','LoginController@index');
//登录行为
Route::post('/login','LoginController@login');
//登出行为
Route::get('/logout','LoginController@logout');
//个人设置
Route::get('/user/me/setting','UserController@setting');
//个人设置操作
Route::post('/user/me/setting','UserController@settingStore');


//文章列表
Route::get('/posts', '\App\Http\Controllers\PostController@index');
//文章搜索
Route::get('/posts/search', '\App\Http\Controllers\PostController@search');
//文章详情
Route::get('/posts/{post}', '\App\Http\Controllers\PostController@show')
    ->where('post', '[0-9]+');
//创建文章
Route::get('/posts/create', '\App\Http\Controllers\PostController@create');
Route::post('/posts', '\App\Http\Controllers\PostController@store');
//图片上传
Route::post('/posts/image/upload', '\App\Http\Controllers\PostController@imageUpload');
//编辑文章
Route::get('/posts/{post}/edit', '\App\Http\Controllers\PostController@edit');
Route::put('/posts/{post}', '\App\Http\Controllers\PostController@update');
//提交评论
Route::post('/posts/{post}/comment','\App\Http\Controllers\PostController@comment');
//赞
Route::get('/posts/{post}/zan', '\App\Http\Controllers\PostController@zan');
//取消赞
Route::get('/posts/{post}/unzan', '\App\Http\Controllers\PostController@unzan');
//删除文章
Route::get('/posts/{post}/delete', '\App\Http\Controllers\PostController@delete')
    ->where('post', '[0-9]+');



