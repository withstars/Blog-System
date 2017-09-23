package com.blog.web;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;

@Repository
@RequestMapping("/admin")
public class AdminController {

    @RequestMapping("/main")
    public ModelAndView toMain(HttpServletRequest request){
        ModelAndView modelAndView=new ModelAndView("admin/main");
        String hostIp=request.getRemoteAddr();    //获取远程主机地址，如：127.0.0.1
        Date date = new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm");//设置日期格式
        String dates = df.format(date);
        request.getSession().getAttribute("admin");



        modelAndView.addObject("hostIp",hostIp);
        modelAndView.addObject("date",dates);
        return modelAndView;
    }
/*
    @RequestMapping("/welcome")
    public ModelAndView toMainWelcome(HttpServletRequest request){
        String hostIp=request.getRemoteAddr();    //获取远程主机地址，如：127.0.0.1
        String servletPath=request.getServletPath(); //获取项目所在服务器的路径，如：/admin/main.html
        String serverName=request.getServerName();    //服务器计算机名 如localhost
        Integer serverPort=request.getServerPort();   // 获取服务器端口，如8080
        String contextPath=request.getContextPath();  //  获取项目名称，如：TestSytem
        String localAddr=request.getLocalAddr();   //获取本地地址，如：127.0.0.1
        String localName=request.getLocalName();    //获取本地IP映射名，如：localhost
        Integer requestPort=request.getLocalPort();    //获取本地端口，如：8090
        String remoteHost=request.getRemoteHost();    //获取远程主机，如：127.0.0.1
        Integer remotePort=request.getRemotePort();   // 获取远程客户端端口，如：3623
        String sessionId=request.getRequestedSessionId();    //获取会话session的ID，如：823A6BACAC64FB114235CBFE85A46CAA
        String requestURI=request.getRequestURI();    //获取包含项目名称的请求路径，如：/TestSytem/object/delObject
        String requestURL=request.getRequestURL().toString();    //获取请求的全路径，如：http://localhost:8090/TestSytem/object/delObject
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";
        Date date = new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy.MM.dd HH:mm");//设置日期格式
        String dates = df.format(date);

        ModelAndView modelAndView=new ModelAndView("admin/welcome");
        modelAndView.addObject("hostIp",hostIp);
        modelAndView.addObject("servletPath",servletPath);
        modelAndView.addObject("serverName",serverName);
        modelAndView.addObject("serverPort",serverPort);
        modelAndView.addObject("contextPath",contextPath);
        modelAndView.addObject("localAddr",localAddr);
        modelAndView.addObject("localName",localName);
        modelAndView.addObject("requestPort",requestPort);
        modelAndView.addObject("remoteHost",remoteHost);
        modelAndView.addObject("remotePort",remotePort);
        modelAndView.addObject("sessionId",sessionId);
        modelAndView.addObject("requestURI",requestURI);
        modelAndView.addObject("requestURL",requestURL);
        modelAndView.addObject("basePath",basePath);
        modelAndView.addObject("date",dates);
        return modelAndView;
    }
*/
}
