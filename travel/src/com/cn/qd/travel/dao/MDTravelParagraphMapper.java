package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDTravelParagraph;

public interface MDTravelParagraphMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDTravelParagraph record);

    int insertSelective(MDTravelParagraph record);

    MDTravelParagraph selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MDTravelParagraph record);

    int updateByPrimaryKeyWithBLOBs(MDTravelParagraph record);

    int updateByPrimaryKey(MDTravelParagraph record);
}