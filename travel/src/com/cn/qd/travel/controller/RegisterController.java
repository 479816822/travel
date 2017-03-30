package com.cn.qd.travel.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.qd.travel.entity.MdUser;
import com.cn.qd.travel.service.UserService;
/**
 * @author anmeihua
 *	用户注册 Controller
 */
@Controller
@RequestMapping(value = "/alu")
public class RegisterController {
	
	@Autowired
	UserService userService;
	
	/**
	 * 检查手机号是否存在
	 * 
	 */
	@RequestMapping(value = "/checkPhone")
	@ResponseBody
	public int checkPhone(String mdTelephone, Model model) {
		int ret = userService.checkPhone(mdTelephone);
		model.addAttribute("userPhone", mdTelephone);
		return ret;
	}	
	
	/**
	 * 注册页面1
	 * 
	 */
	@RequestMapping(value = "/regist")
	public String goRegis() {
		return "register1";
	}
	
	/**
	 * 注册页面2
	 * 
	 */
	@RequestMapping(value = "/mobile")
	public String goRegis2(Model model, String mdTelephone) {
		model.addAttribute("userPhone", mdTelephone);
		return "register2";
	}

	/**
	 * 注册提交
	 * 	注册成功转发到首页
	 * 	注册失败重定向到注册2页面
	 */
	@RequestMapping("/register2")
	public String submit(Model model, MdUser user) {
		int ret = userService.insertSelective(user);
		if (ret > 0) {
			model.addAttribute("registMsg", "注册成功！");
			return "index";
		} else {
			model.addAttribute("registMsg", "网络异常，请重试！");
			return "register2";
		}
	}
}
