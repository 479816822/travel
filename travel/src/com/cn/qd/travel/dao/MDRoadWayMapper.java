package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDRoadWay;

public interface MDRoadWayMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDRoadWay record);

    int insertSelective(MDRoadWay record);

    MDRoadWay selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MDRoadWay record);

    int updateByPrimaryKey(MDRoadWay record);
}