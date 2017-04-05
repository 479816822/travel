package com.cn.qd.travel.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.cn.qd.travel.core.BaseService;
import com.cn.qd.travel.entity.MdUserLeaveMessage;

@Service
public interface CommentLeavelService extends BaseService {
	
	/**
	 * 查询数据
	 * @param t
	 * @return
	 */
	public ArrayList<Object> selectBySql(Object t); 
	
	/**
	 * 通过主键查询数据
	 * @param t
	 * @return
	 */
	public ArrayList<MdUserLeaveMessage> selectById(Object t); 
	


}
