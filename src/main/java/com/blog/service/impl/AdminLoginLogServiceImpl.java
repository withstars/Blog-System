package com.blog.service.impl;

import com.blog.dao.AdminLoginLogDao;
import com.blog.domain.AdminLoginLog;
import com.blog.service.AdminLoginLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminLoginLogServiceImpl implements AdminLoginLogService{

    @Autowired
    public AdminLoginLogDao adminLoginLogDao;
    public AdminLoginLog selectRencent(Integer adminId) {
        return adminLoginLogDao.selectRencent(adminId);
    }
}
