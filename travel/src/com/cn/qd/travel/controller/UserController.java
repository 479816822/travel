package com.cn.qd.travel.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.qd.travel.entity.MDTravelNote;
import com.cn.qd.travel.entity.MdUser;
import com.cn.qd.travel.service.TravelService;
import com.cn.qd.travel.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	@Autowired
	TravelService travelService;

	/**
	 * 用户主页
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "toMyHome")
	public String toHome(Model model, HttpSession session) {
		 MdUser user = (MdUser) session.getAttribute("user");
		 //查询用户的所有游记
		 List<MDTravelNote> travelList=travelService.selectTravelList(null, user.getMdUserRecid());
		 model.addAttribute("trackList", travelList);
		return "myHome";
	}

	/**
	 * 用户好友
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "toFriend")
	public String toFriend(Model model, HttpSession session) {
		return "myHome";
	}



}
