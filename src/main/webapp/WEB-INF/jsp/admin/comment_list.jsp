
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
<div style="position: relative;top: 10%">
    <c:if test="${!empty succ}">
        <div class="alert alert-success" role="alert">
                ${succ}
        </div>
    </c:if>
    <c:if test="${!empty error}">
        <div class="alert alert-danger" role="alert">
                ${error}
        </div>
    </c:if>
</div>
<div class="container">
    <c:if test="${!empty comments}">
    <table class="table">
        <thead class="thead-default">
        <tr>
            <th>流水号</th>
            <th>评论内容</th>
            <th>日期</th>
            <th>昵称</th>
            <th>邮箱</th>
            <th>删除</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${comments}" var="comment">
        <tr>
            <th scope="row">${comment.id}</th>
            <td>${comment.content}</td>
            <td>${comment.date}</td>
            <td>${comment.name}</td>
            <td>${comment.email}</td>
            <td><button type="button" class="btn btn-outline-danger btn-sm" onclick="ifdelete('${comment.id}') ">删除</button></td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
        <script src="/js/jquery-3.2.1.min.js"></script>
        <script>
            function ifdelete(id) {
                layer.confirm('确定删除该评论吗?', {
                    btn: ['确定','取消'] //按钮
                }, function(){
                    $.ajax({
                        type: 'POST',
                        url: '/api/comment/del',
                        datatype:'json',
                        data:{"id":id},
                        success: function(data){
                            if(data['stateCode']==1){
                                layer.msg('删除成功!',{icon:1,time:1000});
                                setTimeout("window.location.reload()",1000);
                            }
                            else {
                                layer.msg('删除失败!',{icon:5,time:1000});
                            }
                        },
                        error:function(data) {
                            console.log('错误...');
                        },
                    });
                }, function(){

                });
            }
        </script>
    </c:if>
    <c:if test="${empty comments}">
        <div class="card">
            <div class="card-body">
                该文章暂无评论!
            </div>
        </div>
    </c:if>
</div>
</body>
</html>