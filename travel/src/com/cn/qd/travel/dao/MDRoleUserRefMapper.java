package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDRoleUserRef;

public interface MDRoleUserRefMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDRoleUserRef record);

    int insertSelective(MDRoleUserRef record);

    MDRoleUserRef selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MDRoleUserRef record);

    int updateByPrimaryKey(MDRoleUserRef record);
}