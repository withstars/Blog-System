package com.blog.service.impl;

import com.blog.dao.ArticleDao;
import com.blog.domain.Article;
import com.blog.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService{

    @Autowired
    public ArticleDao articleDao;

    public Article selectById(Integer id) {
        return articleDao.selectByPrimaryKey(id);
    }

    public List<Article> queryAll(int start, int pageNum) {
        return articleDao.queryAll(start,pageNum);
    }

    public int countAllNum() {
        return articleDao.countAllNum();
    }

    public int updateArticle(Article article) {
        return articleDao.updateByPrimaryKey(article);
    }

    public int deleteById(Integer id) {
        return articleDao.deleteByPrimaryKey(id);
    }

    public int selectCount() {
        return articleDao.countAllNum();
    }

    public List<Article> selectByWord(String word) {
        return articleDao.selectByWord(word);
    }
}
