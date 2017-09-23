
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>博客管理系统</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <script type="text/javascript" src="/js/ueditor.config.js"></script>
    <script type="text/javascript" src="/js/ueditor.all.min.js"> </script>
    <script type="text/javascript"  src="/js/zh-cn.js"></script>
</head>
<body>
<div class="container">
    <form>
        <div class="form-group">
            <label for="title">文章标题</label>
            <input type="text" class="form-control" id="title" placeholder="文章标题...">
        </div>
        <div class="form-group">
            <label for="cate">栏目</label>
            <select class="form-control" id="cate">
                <option>学习</option>
                <option>生活</option>
            </select>
        </div>
        <div class="form-group">
            <label for="keywords">关键字</label>
            <input type="text" class="form-control" id="keywords" placeholder="关键字...">
        </div>
        <div class="form-group">
            <label for="desci">简介</label>
            <textarea class="form-control" id="desci" rows="3" placeholder="简介..."></textarea>
        </div>
        <div class="form-group">
            <label for="content">内容</label>
            <textarea class="form-control" id="content" rows="3"style="max-width: 100%;max-height: 100%;" ></textarea>

        </div>
        <script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
    </form>
    <script>
        $(function(){

            var ue = UE.getEditor('editor');

        });
    </script>
</div>
</body>
</html>