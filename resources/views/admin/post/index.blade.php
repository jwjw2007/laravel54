

@extends('admin.layout.main')
        @section('content')
        <!-- Main content -->
        <section class="content">
            <!-- Small boxes (Stat box) -->
            <div class="row">
                <div class="col-lg-10 col-xs-6">
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">文章列表</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table class="table table-bordered">
                                <tbody><tr>
                                    <th style="width: 10px">#</th>
                                    <th>文章标题</th>
                                    <th>操作</th>
                                </tr>
                                <tr>
                                    <td>62.</td>
                                    <td>你的眼，住着天的蓝</td>
                                    <td>
                                        <button type="button" class="btn btn-block btn-default post-audit" post-id="62" post-action-status="1" >通过</button>
                                        <button type="button" class="btn btn-block btn-default post-audit" post-id="62" post-action-status="-1" >拒绝</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>61.</td>
                                    <td>不要为了“斗茶”，而荒废了喝茶的快乐</td>
                                    <td>
                                        <button type="button" class="btn btn-block btn-default post-audit" post-id="61" post-action-status="1" >通过</button>
                                        <button type="button" class="btn btn-block btn-default post-audit" post-id="61" post-action-status="-1" >拒绝</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>60.</td>
                                    <td>哪些因素决定文章受欢迎呢？</td>
                                    <td>
                                        <button type="button" class="btn btn-block btn-default post-audit" post-id="60" post-action-status="1" >通过</button>
                                        <button type="button" class="btn btn-block btn-default post-audit" post-id="60" post-action-status="-1" >拒绝</button>
                                    </td>
                                </tr>
                                </tbody></table>
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <!-- /.content -->
   @endsection