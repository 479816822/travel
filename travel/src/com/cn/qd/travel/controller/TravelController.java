package com.cn.qd.travel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.qd.travel.entity.MdUser;
import com.cn.qd.travel.service.TravelService;

@Controller
public class TravelController {
	
	@Autowired
	TravelService travelService;
	
	// 游记写入成功插入数据库
	@ResponseBody
	@RequestMapping(value = "writeTravel", method = { RequestMethod.POST })
	public int saveTravel(@RequestBody String[] objArray,HttpSession session) {
		//用户
//		MdUser user = (MdUser) session.getAttribute("user");
		//进行数据封装


		System.out.println("eeeeeeee");
		
		return 0;
	}


}
