package com.blog.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class AdminLoginLog {
    private Long id;

    private Integer adminId;

    private Date date;

    private String ip;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip == null ? null : ip.trim();
    }

    public String getLocalTime() {
        SimpleDateFormat df = new SimpleDateFormat("yyyy/M/dd HH:mm");//设置日期格式
        String dates = df.format(date);
        return dates;

    }
}