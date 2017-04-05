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
	
	@RequestMapping("Mheader")
	public String goMheader() {
		return "Mheader";
	}
	
	@RequestMapping("MainFooter")
	public String goMainFooter() {
		return "MainFooter";
	}
	
	@RequestMapping("MainHeader")
	public String goMainHeader() {
		return "MainHeader";
	}
	
	/**
	 * 历历在目
	 * @return
	 */
	@RequestMapping("beautifulPage")
	public String goBeauitfulPage() {
		return "lilizaimu";
	}
}
