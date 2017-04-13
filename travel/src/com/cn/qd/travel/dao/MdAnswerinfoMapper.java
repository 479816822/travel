package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MdAnswerinfo;

public interface MdAnswerinfoMapper {
    int deleteByPrimaryKey(String answerId);

    int insert(MdAnswerinfo record);

    int insertSelective(MdAnswerinfo record);

    MdAnswerinfo selectByPrimaryKey(String answerId);

    int updateByPrimaryKeySelective(MdAnswerinfo record);

    int updateByPrimaryKey(MdAnswerinfo record);
}