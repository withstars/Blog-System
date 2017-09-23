
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</head>
<body>
<table class="table table-striped table-sm">

    <tr class="table-active">
        <th width="15%">ID</th>
        <td >${article.id}</td>
    </tr>
    <tr class="table-secondary">
        <th>标题</th>
        <td>${article.title}</td>
    </tr>
    <tr class="table-success">
        <th>关键字</th>
        <td>${article.keywords}</td>
    </tr>
    <tr class="table-danger">
        <th>简介</th>
        <td>${article.desci}</td>
    </tr>
    <tr class="table-warning">
        <th>发表时间</th>
        <td>${article.localTime}</td>
    </tr>
    <tr class="table-info">
        <th>点击量</th>
        <td>${article.click}</td>
    </tr>
    <tr class="table-light">
        <th>内容</th>
        <td>${article.content}</td>
    </tr>
</table>

</body>
</html>