package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MdUserLeaveMoreMessage;

public interface MdUserLeaveMoreMessageMapper {
    int deleteByPrimaryKey(String mdLvMRecid);

    /**
     * 多级留言
     * @param record
     * @return
     */
    int insert(MdUserLeaveMoreMessage record);

    int insertSelective(MdUserLeaveMoreMessage record);

    MdUserLeaveMoreMessage selectByPrimaryKey(String mdLvMRecid);

    int updateByPrimaryKeySelective(MdUserLeaveMoreMessage record);

    int updateByPrimaryKey(MdUserLeaveMoreMessage record);
}