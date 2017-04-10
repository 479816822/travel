package com.cn.qd.travel.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.qd.travel.entity.MDCommentOne;
import com.cn.qd.travel.entity.MdUser;
import com.cn.qd.travel.entity.MdUserLeaveMessage;
import com.cn.qd.travel.entity.Page;
import com.cn.qd.travel.service.CommentLeavelService;
import com.cn.qd.travel.util.GUID;

@Controller
public class CommentController {
	
	@Autowired
	CommentLeavelService commentTravel;
	
	
	
	/**
	 * 游记评论
	 * @param model
	 * @param session
	 * @param travelComment
	 * @return
	 */
	@RequestMapping(value = "replyTravel", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String, MDCommentOne> travelComment(Model model, HttpSession session, MDCommentOne travelComment) {
		MdUser user = (MdUser) session.getAttribute("user");
		travelComment.setMdCommentTime(new Date());
		travelComment.setMdCommentPeople(user.getMdUserRecid());
		travelComment.setMdRecid(GUID.createGuid());
		travelComment.setMdPraise(Long.valueOf("1"));
		int ret=commentTravel.insertTravelComment(travelComment);
		Map<String, MDCommentOne> result = new HashMap<String, MDCommentOne>();
		
		travelComment.setUser(user);
		if(ret>0){
			SimpleDateFormat sim=new SimpleDateFormat("yyyy-MM-dd");
			String str=sim.format(travelComment.getMdCommentTime());
			travelComment.setCommentDate(str);
			result.put("replyInfo", travelComment);
		}else{
			result.put("replyInfo", null);
		}
		return result;
	}

	
	/**
	 * 用户留言分页
	 * @param page
	 * @param lvMessage
	 * @return
	 */
	@RequestMapping(value = "commentPage", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String,Object> lvMeaagePage(Page page,HttpServletRequest request){
		Map<String, Object> result = new HashMap<String, Object>();
		ArrayList<MdUserLeaveMessage> LvMessageList=commentTravel.selectLvMeaagePage(page,request);
		result.put("lvMessage", LvMessageList);
		return result;
	}
	

}
