package com.cn.qd.travel.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.qd.travel.entity.MDTravelNote;
import com.cn.qd.travel.entity.MdUser;
import com.cn.qd.travel.entity.MdUserLeaveMessage;
import com.cn.qd.travel.entity.Pages;
import com.cn.qd.travel.service.CommentLeavelService;
import com.cn.qd.travel.service.TravelService;
import com.cn.qd.travel.service.UserService;
import com.cn.qd.travel.util.ChangeIcon;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	@Autowired
	TravelService travelService;
	@Autowired
	CommentLeavelService comment;

	/**
	 * 用户主页
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "toMyHome")
	public String toHome(Model model, HttpSession session, HttpServletRequest request) {
		MdUser user = (MdUser) session.getAttribute("user");
		if (user == null) {
			return "login";
		}
		// 查询用户的所有游记
		List<MDTravelNote> travelList = travelService.selectTravelList(null, user.getMdUserRecid());
		// 查询留言
		MdUserLeaveMessage comments = new MdUserLeaveMessage();
		comments.setMdHostUserRecid(user.getMdUserRecid());
		ArrayList<MdUserLeaveMessage> commnetList = comment.selectById(comments, request);
		Pages page = new Pages();
		page.setPageCurrent(1);
		page.setPageSize(6);
		int num = commnetList.size();
		if (num % 6 == 0) {
			page.setPageCount(commnetList.size() / 6);
		} else {
			page.setPageCount(commnetList.size() / 6 + 1);
		}
		model.addAttribute("page", page);
		model.addAttribute("trackList", travelList);
		model.addAttribute("messageList", commnetList);
		model.addAttribute("userInfo", user);
		return "myHome";
	}

	/**
	 * 游记主人界面主页
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "toHostHome")
	public String toHostHome(Model model, HttpSession session, String userId, HttpServletRequest request) {
		ArrayList<MdUser> userList = userService.selectById(userId);
		if (userList.size() > 0) {
			MdUser user = null;
			user = userList.get(0);
			// 查询用户的所有游记
			List<MDTravelNote> travelList = travelService.selectTravelList(null, userId);
			// 查询留言
			MdUserLeaveMessage comments = new MdUserLeaveMessage();
			comments.setMdHostUserRecid(userId);

			// 用户头像转换
			String savePath = request.getSession().getServletContext().getRealPath("upload");
			String userHeadImg = ChangeIcon.changeImg(user.getMdIcon(), savePath);
			user.setUserHeadImg(userHeadImg);
			ArrayList<MdUserLeaveMessage> commnetList = comment.selectById(comments, request);
			Pages page = new Pages();
			page.setPageCurrent(1);
			page.setPageSize(6);
			int num = commnetList.size();
			if (num % 6 == 0) {
				page.setPageCount(commnetList.size() / 6);
			} else {
				page.setPageCount(commnetList.size() / 6 + 1);
			}

			model.addAttribute("page", page);
			model.addAttribute("trackList", travelList);
			model.addAttribute("messageList", commnetList);
			model.addAttribute("userInfo", user);
		}
		return "myHome";
	}

	/**
	 * 用户游记页面
	 * 
	 * @param model
	 * @param session
	 * @param userId
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "toMyTravel")
	public String myTravelPage(Model model, HttpSession session, String userId, HttpServletRequest request) {
		ArrayList<MdUser> userList = userService.selectById(userId);
		if (userList.size() > 0) {
			MdUser user = null;
			user = userList.get(0);
			// 查询用户的所有游记
			List<MDTravelNote> travelList = travelService.selectTravelList(null, userId);
			// 用户头像转换
			String savePath = request.getSession().getServletContext().getRealPath("upload");
			String userHeadImg = ChangeIcon.changeImg(user.getMdIcon(), savePath);
			user.setUserHeadImg(userHeadImg);
			// 查询评论
			model.addAttribute("travelList", changDate(travelList));
			model.addAttribute("userInfo", user);
		}
		return "mytravels";
	}

	/**
	 * 改变游记日期
	 * @param travelList
	 * @return
	 */
	private List<MDTravelNote> changDate(List<MDTravelNote> travelList) {
		for (int i = 0; i < travelList.size(); i++) {
			SimpleDateFormat sim = new SimpleDateFormat("YYYY-MM-dd");
			if (travelList.get(i).getMdStartTime() != null) {
				String strdate = sim.format(travelList.get(i).getMdStartTime());
				travelList.get(i).setStartDate(strdate);
			}
		}

		return travelList;
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
