package com.cn.qd.travel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.qd.travel.service.UserService;

/**
 * @author anmeihua
 *	登录Controller
 */
@Controller
@RequestMapping("/alu")
public class LoginController {
	
	@Autowired
	UserService userService;
	
	/**
	 * 登录页面
	 */
	@RequestMapping("/login/")
	public String goLogin() {
		return "login";
	}
	
	//手机号码验证
//	@RequestMapping("/checkPhone")
//	@ResponseBody
//	public int checkPhone(String mdTelephone, Model model) {
//		int ret = userService.checkPhone(mdTelephone);
//		model.addAttribute("mdTelephone", mdTelephone);
//		return ret;
//	}
	/**
	 * 登录处理
	 */
	
}
