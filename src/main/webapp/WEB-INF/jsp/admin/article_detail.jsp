
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

</head>
<body>
<table class="table table-striped">

    <tr>
        <th width="15%">ID</th>
        <td>${article.id}</td>
    </tr>
    <tr>
        <th>标题</th>
        <td>${article.title}</td>
    </tr>
    <tr>
        <th>简介</th>
        <td>${article.desci}</td>
    </tr>
    <tr>
        <th>发表时间</th>
        <td>${article.localTime}</td>
    </tr>
    <tr>
        <th>点击量</th>
        <td>${article.click}</td>
    </tr>
    <tr>
        <th>内容</th>
        <td>${article.content}</td>
    </tr>
</table>

</body>
</html>