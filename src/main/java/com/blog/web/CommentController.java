package com.blog.web;

import com.blog.domain.Comment;
import com.blog.service.impl.CommentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;

@Controller
public class CommentController {

    @Autowired
    public CommentServiceImpl commentService;

    @RequestMapping(value = "/api/comment/add", method = RequestMethod.POST)
    public @ResponseBody Object commentAdd(HttpServletRequest request) {
        Comment comment=new Comment();
        comment.setArticleId(Long.parseLong(request.getParameter("articleId")));
        comment.setContent(request.getParameter("content"));
        comment.setDate(new Date());
        comment.setName(request.getParameter("name"));
        comment.setEmail(request.getParameter("email"));
        HashMap<String, String> res = new HashMap<String, String>();
        if(commentService.insertComment(comment)>0){
            res.put("stateCode", "1");
        }else {
            res.put("stateCode", "0");
        }
        return res;
    }
    @RequestMapping(value = "/api/comment/del", method = RequestMethod.POST)
    public @ResponseBody Object commentDel(HttpServletRequest request) {
        long id=Long.parseLong(request.getParameter("id"));
        HashMap<String, String> res = new HashMap<String, String>();
        if (commentService.delById(id)){
            res.put("stateCode", "1");
        }else {
            res.put("stateCode", "0");
        }
        return res;
    }
}
