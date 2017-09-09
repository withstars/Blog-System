package com.blog.dao;

import com.blog.domain.Comment;
import org.springframework.stereotype.Repository;

@Repository
public interface CommentDao {
    int deleteByPrimaryKey(Long id);

    int insert(Comment record);

    int insertSelective(Comment record);

    Comment selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKeyWithBLOBs(Comment record);

    int updateByPrimaryKey(Comment record);
}