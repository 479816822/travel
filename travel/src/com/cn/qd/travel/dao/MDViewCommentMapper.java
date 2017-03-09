package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDViewComment;

public interface MDViewCommentMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDViewComment record);

    int insertSelective(MDViewComment record);

    MDViewComment selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MDViewComment record);

    int updateByPrimaryKey(MDViewComment record);
}