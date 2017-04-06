package com.cn.qd.travel.dao;

import java.util.ArrayList;

import com.cn.qd.travel.entity.MDCommentOne;

public interface MDCommentOneMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDCommentOne record);

    int insertSelective(MDCommentOne record);

    /**
     * 通过id查询评论
     * @param id
     * @return
     */
    ArrayList<MDCommentOne> selectByPrimaryKey(String id);
    
    /**
     * 通过id查询评论
     * @param id
     * @return
     */
    ArrayList<MDCommentOne> selectListBy(String id);

    int updateByPrimaryKeySelective(MDCommentOne record);

    int updateByPrimaryKey(MDCommentOne record);
}