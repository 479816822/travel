package com.cn.qd.travel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 网站目的地推荐 旅游景点介绍
 * 
 * @author langren
 *
 */
@Controller
public class MDAddressController {

	/**
	 * 目的地首页
	 * @return
	 */
	@RequestMapping(value="mddIndex")
	public String toAddressIndex() {
		return "mddADDressIndex";
	}

}
