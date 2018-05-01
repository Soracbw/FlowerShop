package com.zy.admin.mapper;

import com.zy.admin.entity.Admin;

public interface AdminMapper {
    public Admin getAdmin(String username) throws Exception;
}
