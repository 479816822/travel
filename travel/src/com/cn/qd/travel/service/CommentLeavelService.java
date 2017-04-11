package com.cn.qd.travel.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.cn.qd.travel.core.BaseService;
import com.cn.qd.travel.entity.MDCommentOne;
import com.cn.qd.travel.entity.MdUserLeaveMessage;
import com.cn.qd.travel.entity.Pages;

@Service
public interface CommentLeavelService extends BaseService {
	
	
	public ArrayList<MdUserLeaveMessage> selectLvMeaagePage(Pages page,HttpServletRequest request);
	
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
	public ArrayList<MdUserLeaveMessage> selectById(Object t,HttpServletRequest request); 
	

	/**
	 * 游记评论插入
	 * @param comment
	 * @return
	 */
	public int insertTravelComment(MDCommentOne comment);
	
	
	/**
	 * 查询指定id游记的评论
	 * @param id
	 * @return
	 */
	public  ArrayList<MDCommentOne> selectTravelComment(String id,HttpServletRequest request);

}
