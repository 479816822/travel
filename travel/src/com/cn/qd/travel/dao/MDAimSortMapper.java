package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDAimSort;

public interface MDAimSortMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDAimSort record);

    int insertSelective(MDAimSort record);

    MDAimSort selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MDAimSort record);

    int updateByPrimaryKey(MDAimSort record);
}