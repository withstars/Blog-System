package com.blog.service;

import com.blog.domain.AdminLoginLog;

public interface AdminLoginLogService {

    AdminLoginLog selectRencent(Integer adminId);

    int insert(AdminLoginLog adminLoginLog);

    int selectCountByAdminId(int adminId);
}
