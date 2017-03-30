package com.cn.qd.travel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 爱旅U后台控制层
 * @author langren
 *
 */
@Controller
public class BackController {
	
	@RequestMapping(value = "back")
	public String askQuestion(Model model, HttpSession session) {
		return "ask_question";
	}

}
