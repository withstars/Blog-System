# 个人博客项目
## 基于Spring+Spring MVC+Mybatis(Maven构建)
### 项目预览
1. 博客主页
<img src="https://github.com/withstars/Blog-System/blob/master/preview/1.PNG">
<img src="https://github.com/withstars/Blog-System/blob/master/preview/2.PNG">
2. 文章详情页
<img src="https://github.com/withstars/Blog-System/blob/master/preview/3.PNG">
<img src="https://github.com/withstars/Blog-System/blob/master/preview/11.PNG">
3. 管理登陆页
<img src="https://github.com/withstars/Blog-System/blob/master/preview/4.PNG">
4. 管理主页
<img src="https://github.com/withstars/Blog-System/blob/master/preview/5.PNG">
5. 文章管理页
<img src="https://github.com/withstars/Blog-System/blob/master/preview/6.PNG">
6. 文章详情页
<img src="https://github.com/withstars/Blog-System/blob/master/preview/7.PNG">
7. 评论管理
<img src="https://github.com/withstars/Blog-System/blob/master/preview/8.PNG">
8. 文章编辑
<img src="https://github.com/withstars/Blog-System/blob/master/preview/9.PNG">
9. 新建文章
<img src="https://github.com/withstars/Blog-System/blob/master/preview/10.PNG"><br/>
### 说明
> 该项目是我学习SSM框架的一个完整Demo.前端使用了Bootstrap-V4,Jquery,Ajax,Layer弹出层插件.后端为SSM框架,分页使用了MyBatis插件pageHelper.
### 如何使用
1. ①.*git clone https://github.com/withstars/Blog-System* <br/>
   ②.*cd  Blog-System*<br/>
   或<br/>
   ①.下载zip文件<br/>
   ②.解压文件，进入解压后的文件夹 <br/>
2. 启动数据库服务,新建数据库名为blog,将sql文件导入blog数据库。
3. 用IDEA打开项目根文件夹。
4. 配置src\main\resources\jdbc.properties中的数据库设置项。
5. 单击IDEA右边侧栏的Maven Projects选项卡，将弹出Maven项目的管理窗口。
7. 单击管理窗口的刷新按钮，等待依赖下载完毕。
8. 点击Maven Projects\Blog-System\Plugins\jetty\jetty:run启动jetty服务器。<br/>
    默认端口号为8080。可在pom.xml中修改。
9. 待服务器启动完毕后，在浏览器地址栏输入 http://localhost:8080 进入博客主页,http://localhost:8080/admin进入管理后台登陆页。
##### 如有问题，请联系我 withstars@126.com