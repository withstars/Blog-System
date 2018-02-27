package com.blog.service.impl;

import com.blog.dao.AdminLoginLogDao;
import com.blog.domain.AdminLoginLog;
import com.blog.service.AdminLoginLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminLoginLogServiceImpl implements AdminLoginLogService{

    @Autowired
    public AdminLoginLogDao adminLoginLogDao;
    public List<AdminLoginLog> selectRencent(Integer adminId) {
        return adminLoginLogDao.selectRencent(adminId);
    }

    public int insert(AdminLoginLog adminLoginLog) {
        return adminLoginLogDao.insert(adminLoginLog);
    }

    public int selectCountByAdminId(int adminId) {
        return adminLoginLogDao.selectCountByAdminId(adminId);
    }
}
