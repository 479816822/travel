package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MdQuestionInfo;

public interface MdQuestionInfoMapper {
    int deleteByPrimaryKey(String quesId);

    int insert(MdQuestionInfo record);

    int insertSelective(MdQuestionInfo record);

    MdQuestionInfo selectByPrimaryKey(String quesId);

    int updateByPrimaryKeySelective(MdQuestionInfo record);

    int updateByPrimaryKey(MdQuestionInfo record);
}