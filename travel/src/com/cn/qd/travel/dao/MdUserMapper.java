package com.cn.qd.travel.dao;

import java.util.List;
import java.util.Map;

import com.cn.qd.travel.entity.MdUser;

public interface MdUserMapper {
	
	/**
	 * 多条件删除删除
	 * @param mdUserRecid
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	int deleteByMore(Map map);
	
	/**
	 * 主键删除
	 * @param mdUserRecid
	 * @return
	 */
    int deleteByPrimaryKey(String mdUserRecid);
    
    /**
     * 数据插入
     * @param record
     * @return
     */
    int insert(MdUser record);

    /**
     * 数据有条件的插入
     * @param record
     * @return
     */
    int insertSelective(MdUser record);

    /**
     * 数据查询,单行数据查询
     * @param mdUserRecid
     * @return
     */
    MdUser selectByPrimaryKey(MdUser record);
    
    
    /**
     * 数据查询,单行数据查询
     * @param mdUserRecid
     * @return
     */
    MdUser selectByPrimaryKey(String mdUserRecid);
    
    /**
     * 数据查询,多行行数据查询
     * @param mdUserRecid
     * @return
     */
    List<MdUser> selectListBy(MdUser record);
    
    
    /**
     * 数据查询,多行行数据查询
     * @param mdUserRecid
     * @return
     */
    @SuppressWarnings("rawtypes")
	List<MdUser> selectListRecords(Map map);
    
    
    /**
     * 数据更新
     * @param mdUserRecid
     * @return
     */
    int updateByPrimaryKeySelective(MdUser record);

    /**
     * 数据更新
     * @param mdUserRecid
     * @return
     */
    int updateByPrimaryKeyWithBLOBs(MdUser record);
    /**
     * 数据更新
     * @param mdUserRecid
     * @return
     */
    int updateByPrimaryKey(MdUser record);
    
    /**
     * 数据更新
     * @param mdUserRecid
     * @return
     */
    @SuppressWarnings("rawtypes")
	int updateByMap(Map map);
    
}