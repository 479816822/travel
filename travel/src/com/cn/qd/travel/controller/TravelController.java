package com.cn.qd.travel.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cn.qd.travel.service.TravelService;

@Controller
public class TravelController {

	@Autowired
	TravelService travelService;

	// 游记写入成功插入数据库
	@RequestMapping(value = "writeTravel")
	public String saveTravel(Model model,HttpServletRequest request) {
		// 用户
		// MdUser user = (MdUser) session.getAttribute("user");
		// 进行数据封装
		return "forget";
	}
	
	

	// 游记写入成功插入数据库
	@RequestMapping(value = "test")
	public String test(Model model,HttpServletRequest request) {
		// 用户
		// MdUser user = (MdUser) session.getAttribute("user");
		// 进行数据封装
		return "Writetravel";
	}


}
