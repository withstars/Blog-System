
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>博客管理系统</title>
    <link rel="stylesheet" href="/css/bootstrap4.0.min.css" >
    <script src="/js/jquery.slim.min.js" ></script>
    <script src="/js/popper.min.js" ></script>
    <script src="/js/bootstrap4.0.min.js"></script>
    <script src="/js/layer.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light" >
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand text-success" href="/admin/main">博客管理</a>

    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item">
                <!-- Example single danger button -->
                <div class="btn-group">
                    <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        新建
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="javascript:void(0);" onclick="fullScreen('添加文章','/admin/article/add')">文章</a>
                        <!-- <a class="dropdown-item" href="#">评论</a> -->
                    </div>
                </div>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/admin/main">主页 </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/admin/article/list">文章管理</a>

            </li>

        </ul>
        <form class="form-inline my-2 my-lg-0" action="/admin/article/search" method="GET">
            <input class="form-control mr-sm-2" type="search" placeholder="文章标题或内容..." aria-label="Search" name="word">
            <button class="btn btn-outline-success my-2 my-sm-0 btn-sm" type="submit">搜索</button>
        </form>

        <a class="btn btn-outline-danger btn-sm" href="/admin/logout" role="button">退出</a>
    </div>
</nav>
<div class="card mb-3">
    <div style="height: 180px;overflow: hidden">
        <img class="card-img-top" src="/img/82839-106.jpg" alt="Card image cap" style="height: 100%;width:100%;">
    </div>

    <div class="card-body">
        <h4 class="card-title">${admin.username}</h4>
        <p class="card-text"><small class="text-muted">上次登录时间:${loginLog.localTime}</small></p>
        <p class="card-text"><small class="text-muted">上次登录IP:${loginLog.ip}</small></p>
        <p class="card-text"><small class="text-muted">本次登录IP:${clientIp}</small></p>
    </div>
</div>
<div >
    <table class="table table-hover">
        <p class="text-success" style="text-align: center"> 系统统计</p>
        <thead>
        <tr >
            <th>#</th>
            <th>文章数</th>
            <th>评论数</th>
            <th>登陆次数</th>
        </tr>
        </thead>
        <tbody>
        <tr class="table-success">
            <th scope="row">全部</th>
            <td>${articleCount}</td>
            <td>${commentCount}</td>
            <td>${loginNum}</td>
        </tr>
        </tbody>
    </table>
</div>

<div style="width: 50%;position: relative;left: 25%">
    <table class="table table-sm" >
        <p class="text-success" style="text-align: center"> 系统信息</p>

        <tr>
            <th scope="row">服务器IP</th>
            <td>${hostIp}</td>
        </tr>
        <tr>
            <th scope="row">服务器端口</th>
            <td>${hostPort}</td>
        </tr>
        <tr>
            <th scope="row">服务器当前时间</th>
            <td>${date}</td>
        </tr>

    </table>
</div>
<script>
    function fullScreen(title,url){
        var index = layer.open({
            type: 2,
            title: title,
            area: ['70%', '70%'],
            content: url,
            maxmin: true
        });
        layer.full(index);
    }
</script>
</body>
</html>