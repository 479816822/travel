package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDUserBlog;

public interface MDUserBlogMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDUserBlog record);

    int insertSelective(MDUserBlog record);

    MDUserBlog selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MDUserBlog record);

    int updateByPrimaryKey(MDUserBlog record);
}