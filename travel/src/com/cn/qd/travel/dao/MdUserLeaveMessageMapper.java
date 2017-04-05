package com.cn.qd.travel.dao;

import java.util.ArrayList;

import com.cn.qd.travel.entity.MdUserLeaveMessage;

public interface MdUserLeaveMessageMapper {
    int deleteByPrimaryKey(String mdLvRecid);

    /**
     * 1级留言
     * @param record
     * @return
     */
    int insert(MdUserLeaveMessage record);

    /**
     * 按条件留言
     * @param record
     * @return
     */
    int insertSelective(MdUserLeaveMessage record);
    
  

    MdUserLeaveMessage selectByPrimaryKey(String mdLvRecid);

    int updateByPrimaryKeySelective(MdUserLeaveMessage record);

    int updateByPrimaryKey(MdUserLeaveMessage record);
    
    /**
     * 查询指定用户的所有留言
     * @param sql
     * @return
     */
    ArrayList<MdUserLeaveMessage> selectListBySql(String sql);
    
    ArrayList<MdUserLeaveMessage> selectList();
    
    /**
     * 查询指定用户的所有留言
     * @param sql
     * @return
     */
    ArrayList<MdUserLeaveMessage> selectListById(String id);
}