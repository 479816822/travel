package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDOperation;

public interface MDOperationMapper {
    int deleteByPrimaryKey(String mdOperationRecid);

    int insert(MDOperation record);

    int insertSelective(MDOperation record);

    MDOperation selectByPrimaryKey(String mdOperationRecid);

    int updateByPrimaryKeySelective(MDOperation record);

    int updateByPrimaryKey(MDOperation record);
}