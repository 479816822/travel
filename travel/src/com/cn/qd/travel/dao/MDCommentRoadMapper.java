package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDCommentRoad;

public interface MDCommentRoadMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDCommentRoad record);

    int insertSelective(MDCommentRoad record);

    MDCommentRoad selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MDCommentRoad record);

    int updateByPrimaryKey(MDCommentRoad record);
}