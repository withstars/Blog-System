package com.blog.web;

import com.blog.domain.Admin;
import com.blog.service.impl.AdminServiceImpl;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;


@Controller

public class LoginController {
    @Autowired
    AdminServiceImpl adminService;

    @RequestMapping(value = {"/admin/index","/admin"})
    public String toIndex() {
        return "admin/login";
    }

    @RequestMapping(value = "/api/loginCheck", method = RequestMethod.POST)
    public @ResponseBody Object loginCheck(HttpServletRequest request) {
        int id=Integer.parseInt(request.getParameter("id"));
        String passwd = request.getParameter("password");
        HashMap<String, String> res = new HashMap<String, String>();
        if(adminService.getById(id)==null){
            res.put("stateCode", "0");
        }
        else if(!adminService.getById(id).getPassword().equals(passwd)){
            res.put("stateCode", "1");
        }else {
            request.getSession().setAttribute("admin",adminService.getById(id));
            res.put("stateCode", "2");
        }

    return res;
    }

    @RequestMapping(value = {"/admin/logout"})
    public String logout(HttpServletRequest request,RedirectAttributes redirectAttributes) {
        request.getSession().removeAttribute("admin");
        request.getSession().invalidate();
        return "redirect:/admin";

    }

}
