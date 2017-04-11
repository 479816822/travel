package com.cn.qd.travel.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.qd.travel.entity.MDTravelNote;
import com.cn.qd.travel.entity.Pages;
import com.cn.qd.travel.util.Page;
import com.cn.qd.travel.util.PageFinish;

/**
 * 分页处理控制层
 * 
 * @author langren
 *
 */
@Controller
public class PageController {

	/**
	 * 分页处理,在缓存中找数据
	 * 
	 * @param model
	 * @param session
	 * @param page
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "pageData", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> travelPage(Model model, HttpSession session, Pages page, HttpServletRequest request) {
		Map<String, Object> result = new HashMap<String, Object>();
		ArrayList<MDTravelNote> travel = new ArrayList<MDTravelNote>();
		Page pages = new Page();
		pages.setCache(page.getCache());
		pages.setDataCount(page.getDataCount());
		pages.setNextPage(page.getNextPage());
		pages.setPageCurrent(page.getPageCurrent());
		pages.setPageCount(page.getPageCount());
		pages.setPrePage(page.getPrePage());
		pages.setPageSize(page.getPageSize());
		ArrayList<MDTravelNote> travelList = (ArrayList<MDTravelNote>) PageFinish.getPageData(pages);
		for (int i = 0; i < travelList.size(); i++) {
			if (travelList.get(i) != null) {
				travel.add(travelList.get(i));
			}
		}
		result.put("travlLists", travel);
		return result;
	}


}
