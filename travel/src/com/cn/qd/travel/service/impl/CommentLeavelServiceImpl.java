package com.cn.qd.travel.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.qd.travel.dao.MdUserLeaveMessageMapper;
import com.cn.qd.travel.entity.MdUserLeaveMessage;
import com.cn.qd.travel.service.CommentLeavelService;
import com.cn.qd.travel.util.GUID;

@Service
public class CommentLeavelServiceImpl implements CommentLeavelService {

	@Autowired
	MdUserLeaveMessageMapper leaveMessage;

	/**
	 * 插入留言数据
	 */
	@Override
	public int insert(Object t, Map<String, Object> map) {
		return leaveMessage.insertSelective((MdUserLeaveMessage) t);
	}

	@Override
	public int update(Object t, Map<String, Object> map) {
		return 0;
	}

	@Override
	public int delete(Object t, Map<String, Object> map) {
		return 0;
	}

	@Override
	public ArrayList<Object> oneResultProvider(Object t, Map<String, Object> map) {
		return null;
	}

	@Override
	public ArrayList<Object> oneListResultProvider(Object t, Map<String, Object> map) {
		return null;
	}

	@Override
	public ArrayList<Object> selectBySql(Object t) {
		return null;
	}

	/**
	 * 查询指定用户的所有的留言数据
	 */
	@Override
	public ArrayList<MdUserLeaveMessage> selectById(Object t) {
		MdUserLeaveMessage lv = (MdUserLeaveMessage) t;
		return leaveMessage.selectListById(lv.getMdHostUserRecid());
	}

}
