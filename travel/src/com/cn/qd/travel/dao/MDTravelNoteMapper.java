package com.cn.qd.travel.dao;

import java.util.List;

import com.cn.qd.travel.entity.MDTravelNote;

public interface MDTravelNoteMapper {
    int deleteByPrimaryKey(String mdRecid);

    int insert(MDTravelNote record);

    int insertSelective(MDTravelNote record);

    MDTravelNote selectByPrimaryKey(String mdRecid);

    int updateByPrimaryKeySelective(MDTravelNote record);

    int updateByPrimaryKey(MDTravelNote record);
    
    List<MDTravelNote> selectTravel(String id);

	List<MDTravelNote> selectList();
	/**
	 * 通过传入SQL进行数据更新，更新用户游记的获赞数
	 * @param sql
	 * @return
	 */
	int updateBySql(MDTravelNote travel);
//	int updateBySql(String sql);
}