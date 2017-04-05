package com.cn.qd.travel.controller;

import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.qd.travel.entity.MDTravelNote;
import com.cn.qd.travel.entity.MdUser;
import com.cn.qd.travel.service.TravelService;
import com.cn.qd.travel.service.UserService;
import com.cn.qd.travel.util.ChangeIcon;
import com.cn.qd.travel.util.Page;

/**
 * @author anmeihua 登录Controller
 */
@Controller
public class LoginController {

	@Autowired
	UserService userService;
	@Autowired
	TravelService travelService;

	/**
	 * 登录页面
	 */
	@RequestMapping(value = "/login")
	public String goLogin() {
		return "login";
	}

	/**
	 * 登录页面 网站入口
	 */
	@RequestMapping(value = "/logins")
	public String goLogins(Model model, MdUser user, HttpSession session, HttpServletRequest request,
			HttpServletResponse response) {
		// 判断是否自动登陆和是否已经登陆，只能登陆一次
		MdUser loginUser = (MdUser) session.getAttribute("user");
		ArrayList<Object> list = null;

		if (loginUser != null) {// 同一个浏览器登陆
			list = userService.oneListResultProvider(loginUser, null);
		} else {// 未登陆
			list = userService.oneListResultProvider(user, null);
		}

		if (list.size() == 1) {// 登陆成功
			user = (MdUser) list.get(0);
			if ("已登陆".equals(user.getMdStdname())) {
				model.addAttribute("user", user.getMdStdname());
				return "redirect:/login";
			}

			((MdUser) list.get(0)).setMdStdname("已登陆");
			userService.update(user, null);
			// 用户头像转换
			String savePath = request.getSession().getServletContext().getRealPath("upload");
			String userHeadImg = ChangeIcon.changeImg(((MdUser) list.get(0)).getMdIcon(), savePath);
			((MdUser) list.get(0)).setUserHeadImg(userHeadImg);
			Cookie loginNameCookie = new Cookie("loginName", user.getMdTelephone());
			Cookie passwordCookie = new Cookie("password", user.getMdPassword());
			Cookie autoLoginCookie = new Cookie("autoLogin", "autoLogin");
			loginNameCookie.setMaxAge(1000 * 10000);
			passwordCookie.setMaxAge(1000 * 10000);
			autoLoginCookie.setMaxAge(1000 * 10000);
			response.addCookie(passwordCookie);
			response.addCookie(loginNameCookie);
			response.addCookie(autoLoginCookie);
			session.setAttribute("user", user);
			return "redirect:/to_index";
		} else {
			return "redirect:/login";
		}
	}

	/**
	 * 跳转到网站首页
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/to_index")
	public String to_index(Model model, HttpServletRequest request, HttpSession session) {
		// 查询游记分页显示
		ArrayList<Object> travelObject = travelService.oneListResultProvider(null, null);
		ArrayList<MDTravelNote> travelList = new ArrayList<MDTravelNote>();
		for (Object object : travelObject) {
			travelList.add((MDTravelNote) object);
		}
		Page page = travelService.getPage();
		model.addAttribute("page", page);
		model.addAttribute("travelList", travelList);
		return "index";
	}

	/**
	 * 爱旅游U网站入口
	 * 
	 * @param model
	 * @param user
	 * @param session
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/alyEntry")
	public String aluEntry(Model model, HttpSession session, HttpServletRequest request) {
		// 判断是否自动登陆和是否已经登陆，只能登陆一次
		Cookie[] cookie = request.getCookies();
		String loginName = null;
		String password = null;
		String autoLogin = null;
		ArrayList<Object> list = null;

		for (int i = 0; i < cookie.length; i++) {
			if (cookie[i].getName().equals("loginName")) {
				loginName = cookie[i].getValue();
			} else if (cookie[i].getName().equals("password")) {
				password = cookie[i].getValue();
			} else if (cookie[i].getName().equals("autoLogin")) {
				autoLogin = cookie[i].getValue();
			}
		}

		if (loginName != null && password != null) {
			if ("autoLogin".equals(autoLogin)) {// 自动登陆
				MdUser loginAutoUser = new MdUser();
				loginAutoUser.setMdTelephone(loginName);
				loginAutoUser.setMdPassword(password);
				list = userService.oneListResultProvider(loginAutoUser, null);
			}
		}

		if (list.size() == 1) {// 登陆成功
			MdUser user = (MdUser) list.get(0);
			if ("已登陆".equals(user.getMdStdname())) {
				model.addAttribute("user", user.getMdStdname());
				return "redirect:/to_index";
			}

			((MdUser) list.get(0)).setMdStdname("已登陆");
			userService.update(user, null);
			// 用户头像转换
			String savePath = request.getSession().getServletContext().getRealPath("upload");
			String userHeadImg = ChangeIcon.changeImg(((MdUser) list.get(0)).getMdIcon(), savePath);
			((MdUser) list.get(0)).setUserHeadImg(userHeadImg);
			session.setAttribute("user", user);
			return "redirect:/to_index";
		}
		return "redirect:/to_index";
	}
	
	/**
	 * 用户退出登陆
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "toOutLogin")
	public String toOutLogin(Model model, HttpSession session) {
		MdUser user = (MdUser) session.getAttribute("user");
		user.setMdStdname("未登陆");
		userService.update(user, null);
		session.removeAttribute("user");
		//重定向
		return "redirect:/to_index";
	}

}
