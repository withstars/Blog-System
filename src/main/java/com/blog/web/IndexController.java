package com.blog.web;

import com.blog.domain.Article;
import com.blog.service.impl.ArticleServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
public class IndexController {
    @Autowired
    ArticleServiceImpl articleService;
    @RequestMapping("/")
    public ModelAndView index(){
        ModelAndView modelAndView =new ModelAndView("index");
        Integer id=90;
        Article article=articleService.selectById(id);
        modelAndView.addObject("article",article);
        return modelAndView;
    }
}
