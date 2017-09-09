package com.blog.dao;

import com.blog.domain.AdminLoginLog;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminLoginLogDao {
    int deleteByPrimaryKey(Long id);

    int insert(AdminLoginLog record);

    int insertSelective(AdminLoginLog record);

    AdminLoginLog selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AdminLoginLog record);

    int updateByPrimaryKey(AdminLoginLog record);
}