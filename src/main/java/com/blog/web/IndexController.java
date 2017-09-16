package com.blog.web;

import com.blog.domain.Article;
import com.blog.service.impl.ArticleServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class IndexController {
    @Autowired
    ArticleServiceImpl articleService;
    @RequestMapping("/")
    public ModelAndView index(){
        ModelAndView modelAndView =new ModelAndView("index");
        List<Article> articles=articleService.queryAll(0,3);
        modelAndView.addObject("articles",articles);
        return modelAndView;
    }

    @RequestMapping("/article")
    public ModelAndView detail(HttpServletRequest request){
        int id=Integer.parseInt(request.getParameter("id"));
        Article article=articleService.selectById(id);
        ModelAndView modelAndView=new ModelAndView("detail");
        modelAndView.addObject("article",article);
        return modelAndView;
    }

    @RequestMapping("/about")
    public String about(){
        return "about";
    }
}
