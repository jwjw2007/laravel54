<?php

namespace App\Providers;

use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider {
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot() {
        //mb4string 761/4=191.xxx
        Schema::defaultStringLength(191);

        //视图合成器
        \View::composer('layout.sidebar', function ($view) {
            $topics = \App\Topic::all();
            $view->with('topics', $topics);
        });

        //慢sql查询并记录日志
        \DB::listen(function ($query) {
            $sql = $query->sql;
            $bindings = $query->bindings;
            $time = $query->time;
            \Log::debug(var_export(compact('sql', 'bindings', 'time'), true));
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register() {
        //
    }
}
