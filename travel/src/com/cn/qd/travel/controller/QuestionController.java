package com.cn.qd.travel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QuestionController {

	@RequestMapping(value = "to_question", method = { RequestMethod.GET })
	public String askQuestion(Model model, HttpSession session, String userId) {
		return "question";
	}

	/**
	 * 到问题提问页面
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "askQuestion")
	public String toAskQuestion(Model model, HttpSession session, String userId) {
		return "ask_question";
	}

	/**
	 * 搜索信息
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "search", method = { RequestMethod.POST })
	public String search(Model model, HttpSession session) {
		return "";
	}

	/**
	 * 我的足迹
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "to_track", method = { RequestMethod.POST })
	public String toMyTrake(Model model, HttpSession session,String userId) {
		return "";
	}

	
}
