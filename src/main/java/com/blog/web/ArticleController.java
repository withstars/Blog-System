package com.blog.web;

import com.blog.domain.Article;
import com.blog.domain.Comment;
import com.blog.service.impl.ArticleServiceImpl;
import com.blog.service.impl.CommentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

@Controller
public class ArticleController {

    @Autowired
    ArticleServiceImpl articleService;
    @Autowired
    public CommentServiceImpl commentService;

    @RequestMapping("/article")
    public ModelAndView detail(HttpServletRequest request){
        int id=Integer.parseInt(request.getParameter("id"));
        List<Comment> comments=commentService.allComments(id,0,10);
        Article article=articleService.selectById(id);

        Integer clickNum=article.getClick();
        article.setClick(clickNum+1);
        articleService.updateArticle(article);

        ModelAndView modelAndView=new ModelAndView("detail");
        modelAndView.addObject("article",article);
        modelAndView.addObject("comments",comments);
        return modelAndView;
    }
    @RequestMapping("/admin/article/detail")
    public ModelAndView adminArticleDetail(HttpServletRequest request){
        int id=Integer.parseInt(request.getParameter("id"));
        Article article=articleService.selectById(id);
        ModelAndView modelAndView=new ModelAndView("/admin/article_detail");
        modelAndView.addObject("article",article);

        return modelAndView;
    }
    @RequestMapping("/admin/article_list")
    public ModelAndView articleList(){
        List<Article> articles=articleService.queryAll(0,10);
        Integer articleCount=articleService.countAllNum();
        ModelAndView modelAndView=new ModelAndView("/admin/article_list");
        modelAndView.addObject("articles",articles);
        modelAndView.addObject("articleCount",articleCount);
        return modelAndView;
    }
    @RequestMapping("/admin/article/add")
    public ModelAndView articleAdd(){
        ModelAndView modelAndView=new ModelAndView("/admin/article_add");

        return modelAndView;
    }
    @RequestMapping(value = "/admin/article/search")
    public ModelAndView articleSearch(HttpServletRequest request){
        String word=request.getParameter("word");
        List<Article> articles=articleService.selectByWord(word);

        ModelAndView modelAndView=new ModelAndView("/admin/article_list");
        modelAndView.addObject("articles",articles);
        return modelAndView;
    }

    @RequestMapping(value = "/api/article/del", method = RequestMethod.POST)
    public @ResponseBody Object loginCheck(HttpServletRequest request) {
        int id=Integer.parseInt(request.getParameter("id"));
        int result=articleService.deleteById(id);
        System.out.print(result);
        HashMap<String, String> res = new HashMap<String, String>();
        if (result==1){
            res.put("stateCode", "1");
        }else {
            res.put("stateCode", "0");
        }
        return res;
    }
}
