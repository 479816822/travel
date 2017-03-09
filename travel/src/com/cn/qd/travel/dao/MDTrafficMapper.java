package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDTraffic;

public interface MDTrafficMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDTraffic record);

    int insertSelective(MDTraffic record);

    MDTraffic selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MDTraffic record);

    int updateByPrimaryKey(MDTraffic record);
}