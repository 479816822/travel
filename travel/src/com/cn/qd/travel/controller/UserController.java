package com.cn.qd.travel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	

	@RequestMapping(value = "toMyHome")
	public String toIndex(Model model, HttpSession session){
		return "myHome";
	}
	

}
