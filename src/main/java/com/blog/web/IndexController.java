package com.blog.web;

import com.blog.domain.Article;
import com.blog.domain.Comment;
import com.blog.service.impl.ArticleServiceImpl;
import com.blog.service.impl.CommentServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class IndexController {
    @Autowired
    public ArticleServiceImpl articleService;
    @Autowired
    public CommentServiceImpl commentService;
    @RequestMapping("/")
    public ModelAndView index(@RequestParam(required=true,defaultValue="1") Integer page, @RequestParam(required=false,defaultValue="5") Integer pageSize){
        ModelAndView modelAndView =new ModelAndView("index");
        PageHelper.startPage(page, pageSize);
        List<Article> articles=articleService.queryAll();
        PageInfo<Article> pageInfo=new PageInfo<Article>(articles);
        modelAndView.addObject("articles",articles);
        modelAndView.addObject("pageInfo",pageInfo);
        return modelAndView;
    }

    @RequestMapping("/about")
    public String about(){
        return "about";
    }
}
