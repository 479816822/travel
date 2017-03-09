package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDTravelNote;

public interface MDTravelNoteMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDTravelNote record);

    int insertSelective(MDTravelNote record);

    MDTravelNote selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MDTravelNote record);

    int updateByPrimaryKey(MDTravelNote record);
}