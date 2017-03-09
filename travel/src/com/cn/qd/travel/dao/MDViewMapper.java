package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDView;

public interface MDViewMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDView record);

    int insertSelective(MDView record);

    MDView selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MDView record);

    int updateByPrimaryKey(MDView record);
}