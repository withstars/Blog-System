package com.blog.web;

import com.blog.dao.CommentDao;
import com.blog.domain.Admin;
import com.blog.domain.AdminLoginLog;
import com.blog.service.AdminLoginLogService;
import com.blog.service.impl.AdminLoginLogServiceImpl;
import com.blog.service.impl.ArticleServiceImpl;
import com.blog.service.impl.CommentServiceImpl;
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
    @Autowired
    public ArticleServiceImpl articleService;
    @Autowired
    public CommentServiceImpl commentService;
    @RequestMapping("/main")
    public ModelAndView toMain(HttpServletRequest request){
        ModelAndView modelAndView=new ModelAndView("admin/main");
        String clientIp=request.getRemoteAddr();    //获取客户端IP，如：127.0.0.1
        String hostIp=request.getLocalAddr();
        int hostPort=request.getLocalPort();
        Date date = new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm");//设置日期格式
        String dates = df.format(date);
        Admin admin=(Admin) request.getSession().getAttribute("admin");
        AdminLoginLog adminLoginLog=adminLoginLogService.selectRencent(admin.getId());
        int articleCount=articleService.selectCount();
        int commentCount=commentService.countAllNum();
        int loginNum=adminLoginLogService.selectCountByAdminId(admin.getId());
        modelAndView.addObject("clientIp",clientIp);
        modelAndView.addObject("hostIp",hostIp);
        modelAndView.addObject("hostPort",hostPort);
        modelAndView.addObject("date",dates);
        modelAndView.addObject("loginLog",adminLoginLog);
        modelAndView.addObject("articleCount",articleCount);
        modelAndView.addObject("commentCount",commentCount);
        modelAndView.addObject("loginNum",loginNum);
        return modelAndView;
    }

}
