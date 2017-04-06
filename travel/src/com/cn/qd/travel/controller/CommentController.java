package com.cn.qd.travel.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.qd.travel.entity.MDCommentOne;
import com.cn.qd.travel.entity.MdUser;
import com.cn.qd.travel.service.CommentLeavelService;
import com.cn.qd.travel.util.GUID;

@Controller
public class CommentController {
	
	@Autowired
	CommentLeavelService commentTravel;
	
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


}
