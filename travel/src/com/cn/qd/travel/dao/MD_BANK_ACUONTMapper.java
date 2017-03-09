package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MD_BANK_ACUONT;

public interface MD_BANK_ACUONTMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MD_BANK_ACUONT record);

    int insertSelective(MD_BANK_ACUONT record);

    MD_BANK_ACUONT selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MD_BANK_ACUONT record);

    int updateByPrimaryKey(MD_BANK_ACUONT record);
}