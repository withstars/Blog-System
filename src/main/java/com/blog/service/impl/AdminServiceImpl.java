package com.blog.service.impl;

import com.blog.dao.AdminDao;
import com.blog.domain.Admin;
import com.blog.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService{
    @Autowired
    public AdminDao adminDao;
    public Admin getById(Integer id) {
        return adminDao.selectByPrimaryKey(id);
    }
}
