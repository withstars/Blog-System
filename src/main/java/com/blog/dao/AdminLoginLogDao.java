package com.blog.dao;

import com.blog.domain.AdminLoginLog;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminLoginLogDao {
    int deleteByPrimaryKey(Long id);

    int insert(AdminLoginLog record);

    int insertSelective(AdminLoginLog record);

    AdminLoginLog selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AdminLoginLog record);

    int updateByPrimaryKey(AdminLoginLog record);

    List<AdminLoginLog> queryAll();

    List<AdminLoginLog> selectRencent(Integer adminId);

    int selectCountByAdminId(Integer adminId);
    }