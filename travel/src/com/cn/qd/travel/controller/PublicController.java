package com.cn.qd.travel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PublicController {

	@RequestMapping("VisitHead")
	public String goVisitHead() {
		return "VisitHead";
	}
	
	@RequestMapping("IndexFooter")
	public String goIndexFooter() {
		return "IndexFooter";
	}
}
