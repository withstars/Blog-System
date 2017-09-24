package com.blog.service;

import com.blog.domain.Article;

import java.util.ArrayList;
import java.util.List;

public interface ArticleService {
Article selectById (Integer id);
List<Article> queryAll(int start,int pageNum);
int countAllNum();
int updateArticle(Article article);
int deleteById(Integer id);
int selectCount();
List<Article> selectByWord(String word);
}
