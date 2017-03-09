package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDCommentOne;

public interface MDCommentOneMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDCommentOne record);

    int insertSelective(MDCommentOne record);

    MDCommentOne selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MDCommentOne record);

    int updateByPrimaryKey(MDCommentOne record);
}