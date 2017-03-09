package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDCommentMore;

public interface MDCommentMoreMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDCommentMore record);

    int insertSelective(MDCommentMore record);

    MDCommentMore selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MDCommentMore record);

    int updateByPrimaryKey(MDCommentMore record);
}