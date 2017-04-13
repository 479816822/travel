package com.cn.qd.travel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.qd.travel.entity.MdUser;
import com.cn.qd.travel.service.UserService;

/**
 * 爱旅U后台控制层
 * @author langren
 *
 */
@Controller
public class BackController {
	@Autowired
	UserService userService;
	
	/**
	 * 用户管理员登陆
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "backLogin")
	public String askQuestion(Model model, HttpSession session,MdUser user) {
		MdUser loginUser=userService.backLogin(user);
		if(loginUser==null){
			//登陆失败
		}else{
			//登陆成功
		}
	
		return "back_login";
	}
	
	
	/**
	 * 后台登陆入口
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "back")
	public String backIn(Model model, HttpSession session) {
		return "back_login";
	}


}
