package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDRole;

public interface MDRoleMapper {
    int deleteByPrimaryKey(String mdRoleId);

    int insert(MDRole record);

    int insertSelective(MDRole record);

    MDRole selectByPrimaryKey(String mdRoleId);

    int updateByPrimaryKeySelective(MDRole record);

    int updateByPrimaryKey(MDRole record);
}