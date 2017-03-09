package com.cn.qd.travel.dao;

import com.cn.qd.travel.entity.MDSystemBlog;

public interface MDSystemBlogMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDSystemBlog record);

    int insertSelective(MDSystemBlog record);

    MDSystemBlog selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MDSystemBlog record);

    int updateByPrimaryKey(MDSystemBlog record);
}