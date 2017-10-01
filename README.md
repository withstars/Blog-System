# 个人博客(SSM框架)
## 基于Spring+Spring MVC+Mybatis(Maven构建)
### 项目预览
<img src="https://github.com/withstars/Blog-System/blob/master/preview/1.PNG">
<img src="https://github.com/withstars/Blog-System/blob/master/preview/2.PNG">
<img src="https://github.com/withstars/Blog-System/blob/master/preview/3.PNG">
<img src="https://github.com/withstars/Blog-System/blob/master/preview/4.PNG">
<img src="https://github.com/withstars/Blog-System/blob/master/preview/5.PNG">


### 说明
> 该个人博客系统是我学习SSM框架的一个Demo,前端使用了BootstrapV4,Jquery,ajax,layer弹出层插件。总之,该Demo非常适合大家用来学习SSM框架。如有问题，联系我withstars@126.com.
### 如何使用
1. *git clone https://github.com/withstars/Blog-System* <br/>
   *cd  Blog-System*<br/>
   或<br/>
   下载zip文件<br/>
   解压文件，进入解压后的文件夹 <br/>
2. 启动数据库服务,新建数据库名为blog,将sql文件导入blog数据库。
3. 用IDEA打开项目根文件夹。
4. 配置src\main\resources\jdbc.properties中的数据库设置项。
5. 单击IDEA右边侧栏的Maven Projects选项卡，将弹出Maven项目的管理窗口。
7. 单击管理窗口的刷新按钮，等待依赖下载完毕。
8. 点击Maven Projects\Blog-System\Plugins\jetty\jetty:run启动jetty服务器。<br/>
    默认端口号为8080。可在pom.xml中修改。
9. 待服务器启动完毕后，在浏览器地址栏输入 http://localhost:8080 进入博客主页,http://localhost:8080/admin进入管理后台登陆页。
### 当前未完成的功能
1. 分页
### 觉得项目不错 请 Star(·-·)