package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDUserIcon;

public interface MDUserIconMapper {
    int deleteByPrimaryKey(String mdIconId);

    int insert(MDUserIcon record);

    int insertSelective(MDUserIcon record);

    MDUserIcon selectByPrimaryKey(String mdIconId);

    int updateByPrimaryKeySelective(MDUserIcon record);

    int updateByPrimaryKeyWithBLOBs(MDUserIcon record);

    int updateByPrimaryKey(MDUserIcon record);
}