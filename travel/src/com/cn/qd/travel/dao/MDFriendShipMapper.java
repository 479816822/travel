package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDFriendShip;

public interface MDFriendShipMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDFriendShip record);

    int insertSelective(MDFriendShip record);

    MDFriendShip selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MDFriendShip record);

    int updateByPrimaryKey(MDFriendShip record);
}