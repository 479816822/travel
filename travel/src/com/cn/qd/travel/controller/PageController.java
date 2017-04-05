package com.cn.qd.travel.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.qd.travel.entity.MDTravelNote;
import com.cn.qd.travel.entity.Page;

/**
 * 分页处理控制层
 * @author langren
 *
 */
@Controller
public class PageController {
	
	
	/**
	 * 分页处理,在缓存中找数据
	 * @param model
	 * @param session
	 * @param page
	 * @return
	 */
	@RequestMapping(value = "pageData",method = { RequestMethod.POST })
	@ResponseBody
	public List<MDTravelNote> travelPage(Model model, HttpSession session, Page page) {
		System.out.println(page.getCache());
		return null;
	}

}
