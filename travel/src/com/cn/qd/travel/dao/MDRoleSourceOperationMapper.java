package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDRoleSourceOperation;

public interface MDRoleSourceOperationMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDRoleSourceOperation record);

    int insertSelective(MDRoleSourceOperation record);

    MDRoleSourceOperation selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MDRoleSourceOperation record);

    int updateByPrimaryKey(MDRoleSourceOperation record);
}