package com.cn.qd.travel.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 用户主页
 * @author langren
 *
 */
@Controller
public class HomeController {

	@RequestMapping(value = "to_myHome")
	public String test(Model model, HttpServletRequest request) {
		// 用户
		// MdUser user = (MdUser) session.getAttribute("user");
		// 进行数据封装
		return "Writetravel";
	}
	
}
