package com.cn.qd.travel.dao;

import java.util.ArrayList;

import com.cn.qd.travel.entity.MDArea;

public interface MDAreaMapper {
	/**
	 * 删除地址
	 * @param mdAreaId
	 * @return
	 */
    int deleteByPrimaryKey(String mdAreaId);

    int insert(MDArea record);

    /**
     * 添加地址
     * @param record
     * @return
     */
    int insertSelective(MDArea record);

    /**
     * 查询地址
     * @param mdAreaId
     * @return
     */
    ArrayList<MDArea> selectByPrimaryKey(String mdAreaId);

    /**
     * 更新地址
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(MDArea record);

    int updateByPrimaryKey(MDArea record);
    
    /**
     * 通过父节点查询数据
     */
    ArrayList<MDArea> selectById(String id);
    
    
    ArrayList<MDArea> selectByName(String name);
    
    
}