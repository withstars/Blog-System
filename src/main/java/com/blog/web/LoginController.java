package com.blog.web;

import com.blog.domain.Admin;
import com.blog.service.impl.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
    @Autowired
    AdminServiceImpl adminService;
    @RequestMapping("/")
    public String index(){
        return "index";
    }
    @RequestMapping("/login")
    public ModelAndView login(HttpServletRequest request){
        Integer id=Integer.parseInt(request.getParameter("id"));
        Admin admin=adminService.getById(id);
        ModelAndView modelAndView=new ModelAndView("main");
        modelAndView.addObject("admin",admin);
        return modelAndView;
    }
    @RequestMapping("/main")
    public String main(){
        return "main";
    }

}
