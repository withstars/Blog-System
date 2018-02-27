<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>星·光</title>
    <link rel="shortcut icon" type="image/x-icon" href="/img/web-icon.png" media="screen" />
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script src="/js/jquery-3.2.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <style>

        *{
            padding: 0;
            margin: 0;
        }
        #bg:after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,.4);
            z-index: 1;
        }/*给背景图片设置蒙版*/
        body {
            font: 14px/1.5 微软雅黑, arial, sans-serif;
            width: 100%;
            overflow: scroll;
        }
        #header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 66px;
            color: #fff;
            z-index: 9999;
            transition: all .3s;
        }/*设置页眉*/
        #header nav {
            position: relative;
            width: 80%;
            margin: 0 auto;
        }
        ul {
            list-style: none;
        }/*去掉列表样式*/
        #header nav li {
            border: 0;
            display: inline-block;
            height: 66px;
            line-height: 66px;
            font-size: 16px;
            position: relative;
            cursor: pointer;
        }
        #header nav li a {
            display: inline-block;
            padding: 0 12px;
            white-space: nowrap;
            color: #fff;
        }
        a {
            text-decoration: none;
        }/*去掉链接下划线*/
        #bg {
            position: relative;
            background: url("/img/296494-106.jpg") no-repeat gray;
            background-size: cover;
        }/*设置背景图片*/
        #bg p {
            position: relative;
            padding: 95px 0 70px;
            color: hsla(0,0%,100%,.9);
            text-align: center;
            font-size: 26px;
            line-height: 2;
            z-index: 2;
            letter-spacing: 2.5px;
            text-shadow: 0 3px 25px rgba(0,0,0,.3);
            cursor: progress;
            padding-top: 210px;
            padding-right: 0px;
            padding-bottom: 210px;
            padding-left: 0px;
        }/*设置文字属性*/
        #bg p i {
            text-decoration: line-through;
            font-size: 20px;
            color: hsla(0,0%,100%,.8);
            text-shadow: 0 0 0 transparent;
            font-style: normal;
        }/*设置第二行文字属性*/
        #header nav figure
        {
            background:url("");
            height: 50px;
            width: 50px;
            background-size:cover ;

        }
        #header nav .my-info {
            position: absolute;
            top: 8px;
            right: 0;
        }
        figure {
            display: block;
            -webkit-margin-before: 1em;
            -webkit-margin-after: 1em;
            -webkit-margin-start: 40px;
            -webkit-margin-end: 40px;
            border-radius:100px;
        }

        #header nav span {
            font-size: 18px;
            margin: 0 10px;
        }
        #header nav figure, #header nav span {
            display: inline-block;

            vertical-align: middle;
        }

        #copyright {
            position: absolute;
            top: 0;
            left: 0;
            background: #0e0e0e;
            width: 100%;
            height: 100%;
            transform-origin: 100% 0;
            transition: all .5s;
            z-index: 2;
        }
        #copyright p {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            line-height: 2;
        }
        #footer {
            position: relative;
            height: 160px;
            border-top: 1px solid #eee;
            color: hsla(0,0%,100%,.69);
            font-size: 12px;
            text-align: center;
            border-top: 2px dashed #98b7ff;
            transition: height .1s 1s;
        }
        #hiddenewm p{
            color: #444;
        }
        #hiddenewm
        {
            background: #fff;
            text-align: center;
            position: absolute;
            left: 25px;
            top: 70px;
        }
        #container {
            position: relative;
            max-width: 95%;
            margin: 0 auto;
        }
        .article {
            box-shadow: 5px 5px 25px #dadada;
            position: relative;
            padding: 0 20px;
            margin: 40px auto;
            max-width: 950px;
            background: #fff;
            text-align: center;
        }
        .article>time {
            position: absolute;
            top: 0;
            left: 0;
            border-bottom: 1px solid #ccc;
            font-size: 14px;
            padding: 4px 5px 0;
            color: #999;
        }
        .article h2 {
            padding-bottom: .5em;
            font-size: 1.75em;
            line-height: 1.225;
        }
        .article>h2 {
            padding: 35px 0 45px;
            font-size: 22px;
            font-weight: 700;
            cursor: pointer;
        }
        #container a {
            color: #333;
        }
        .article>span {
            position: absolute;
            top: 0;
            right: 0;
            color: #999;
            padding: 3px 10px;
            background: #f1f1f1;
            font-size: 14px;
        }
        .article section {
            text-align: left;
            padding: 10px;
            font-size: 16px;
        }
        .article blockquote {
            padding: 0 15px;
            color: #777;
            border-left: 4px solid #ddd;
        }
        .article footer {
            padding: 25px 0 20px;
        }
        .article footer a {
            display: inline-block;
            color: #18bc9c;
            cursor: pointer;
            padding: 4px 20px;
            border-radius: 5px;
            transition: all .5s;
            border: 1px solid #18bc9c;
        }
        #pagebar{
            text-align: center;
        }
        .comment{
        width:60%;
        position:relative;
        left:20%;
        border:1px ;
        text-align:center;
        margin:9px;
        background-color:#fff;
        border-radius: 5px;
        transition: all .5s;
        }

    </style>
</head>
<body background="/img/bg.png" >

<div>
    <header id="header">
        <nav>
            <ul>
                <li>
                    <a href="/">首页</a>
                    <a href="/about">关于</a>
                </li>
            </ul>
            <div class="my-info" onmouseover="hiddeewm()" onmouseout="hiddeewm()">
                <figure></figure>
                <span>星·光</span>
                <div id="hiddenewm" hidden="true" >
                    <img src="/img/me.jpg" width="200px" height="200px" >
                    <p></p>
                </div>
            </div>
        </nav>
    </header>
    <div id="bg" >
        <p>
            和所有以梦为马的诗人一样
            <br>
            <i>岁月易逝 一滴不剩</i>
        </p>
    </div>
    <div id="container">
<article class="article">
            <time id="time1">${article.localTime}</time>
            <h2 style="text-align: center; ">${article.title}</h2>
            <p style="position: center" class="text-info">点击量:${article.click}</p>
            <section>
                <blockquote>
                    <p>${article.desci}</p>
                </blockquote>
                <p id="zhengwen">
                    ${article.content}
                </p>
                <p style="text-align:center;color:#ccc;font-size:12px;margin-top:40px;">
                    希望你今年过得比去年好一点
                    <br>
                    是因为有我
                </p>
                <p style="margin: 5em 0 1em;text-align: center;color: #83b8ec;font-size: .8em">
                    <span>Have a nice day :)</span>
                </p>
            </section>
        </article>
    </div>
    <% int i =1;    %>
    <c:forEach items="${comments}" var="comment">


        <article class="comment">
                <section style="text-align:left">
                <%= i++  %>楼&nbsp;&nbsp;${comment.name}&nbsp;&nbsp;${comment.date}<br/><br/>
                <p>${comment.content}</p><br/>
                </section>
            </article>
    </c:forEach>
    		<div class="form-horizontal" role="form" style="margin:10px">
    			<div class="form-group">
                        <label for="inputPassword" class="col-sm-2 control-label">评论</label>
                        <div class="col-sm-3">
                               <textarea id="content"  class="form-control" rows="3"  placeholder="文明上网，理性发言" ></textarea>
                         </div>
                 </div>
        <input id="articleId" type="hidden" value="${article.id}" >
    					<div class="form-group">
                    		<label for="name" class="col-sm-2 control-label">昵称</label>

                    		<div class="col-sm-3">
                    			<input type="text" id="name" class="form-control"
                    				   placeholder="昵称">
                    		</div>
                    	</div>
                    	<div class="form-group">
                               <label for="email" class="col-sm-2 control-label">邮箱</label>
                                <div class="col-sm-3">
                                  <input type="email" id="email" class="form-control"  placeholder="邮箱">
                                </div>
                        </div>
                        <div class="form-group" style="position:relative;left:13%">
     <br/>
        <p style="text-align: right;color: red;position: absolute" id="info"></p>
        <br/>
     <button id="commentButton" class="btn btn-default" type="submit">提交</button>
                                                </div>

    			</div>
    			 <script>

                        $("#commentButton").click(function () {
                            if($("#content").val()==''&&$("#name").val()==''&&$("#email").val()==''){
                                $("#info").text("提示:请输入评论内容,昵称和邮箱");
                            }
                            else if ($("#content").val()==''){
                                $("#info").text("提示:请输入评论内容");
                            }
                            else if($("#name").val()==''){
                                $("#info").text("提示:请输入昵称");
                            }
                            else if($("#email").val()==''){
                                $("#info").text("提示:请输入邮箱");
                            }
                            else {
                             $("#info").text("");
                                $.ajax({
                                    type: "POST",
                                    url: "/api/comment/add",
                                    data: {
                                        content: $("#content").val() ,
                                        name: $("#name").val(),
                                        email: $("#email").val(),
                                        articleId:$("#articleId").val(),
                                    },
                                    dataType: "json",
                                    success: function(data) {
                                        if(data.stateCode.trim() == "1") {
                                            $("#info").text("评论成功,跳转中...");
                                            window.location.reload();
                                        } else  {
                                            $("#info").text("评论失败...");
                                        }
                                    }
                                });
                            }
                        })

                    </script>
    <div style="position: relative;left: 12%">
        <c:if test="${!empty lastArticle }">
            <div ><a href="/article/?id=${lastArticle.id}"><h4><span class="label label-primary">上一篇:${lastArticle.title}</span></h4></a></div>
        </c:if>
        <c:if test="${!empty nextArticle }">
            <div><a href="/article/?id=${nextArticle.id}"><h4><span class="label label-success">下一篇:${nextArticle.title}</span></h4></a></div>
        </c:if>
    </div>
    </div>

    <footer id="footer">
        <section id="copyright">
            <p style="font-size: 20px">
                © 2018 <a href="/">星·光</a>
            </p>
        </section>
    </footer>

</div>
</div>
</body>
</html>