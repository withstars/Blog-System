package com.blog.web;

import com.blog.domain.Admin;
import com.blog.domain.AdminLoginLog;
import com.blog.service.AdminLoginLogService;
import com.blog.service.impl.AdminLoginLogServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;

@Repository
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    public AdminLoginLogServiceImpl adminLoginLogService;
    @RequestMapping("/main")
    public ModelAndView toMain(HttpServletRequest request){
        ModelAndView modelAndView=new ModelAndView("admin/main");
        String hostIp=request.getRemoteAddr();    //获取远程主机地址，如：127.0.0.1
        Date date = new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm");//设置日期格式
        String dates = df.format(date);
        Admin admin=(Admin) request.getSession().getAttribute("admin");
        AdminLoginLog adminLoginLog=adminLoginLogService.selectRencent(admin.getId());
        System.out.print(admin.getId());
        modelAndView.addObject("hostIp",hostIp);
        modelAndView.addObject("date",dates);
        modelAndView.addObject("loginLog",adminLoginLog);
        return modelAndView;
    }

}
