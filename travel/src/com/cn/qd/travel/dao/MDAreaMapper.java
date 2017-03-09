package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDArea;

public interface MDAreaMapper {
    int deleteByPrimaryKey(String mdAreaId);

    int insert(MDArea record);

    int insertSelective(MDArea record);

    MDArea selectByPrimaryKey(String mdAreaId);

    int updateByPrimaryKeySelective(MDArea record);

    int updateByPrimaryKey(MDArea record);
}