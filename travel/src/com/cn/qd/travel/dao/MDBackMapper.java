package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDBack;

public interface MDBackMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDBack record);

    int insertSelective(MDBack record);

    MDBack selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MDBack record);

    int updateByPrimaryKey(MDBack record);
}