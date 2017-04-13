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
import com.cn.qd.travel.util.ChangeIcon;
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
		result.put("travlLists", chageUserHead(travel, request));
		return result;
	}

	/**
	 * 修改用户头像
	 * 
	 * @param travel
	 * @param request
	 * @return
	 */
	private ArrayList<MDTravelNote> chageUserHead(ArrayList<MDTravelNote> travel, HttpServletRequest request) {
		for (int i = 0; i < travel.size(); i++) {
			String savePath = request.getSession().getServletContext().getRealPath("upload");
			String userHeadImg = ChangeIcon.changeImg(travel.get(i).getUser().getMdIcon(), savePath);
			travel.get(i).getUser().setUserHeadImg(userHeadImg);
		}
		return travel;
	}
	
//	
//	/*
//	 * 显示热门游记
//	 */
//	@RequestMapping("hot")
//	@ResponseBody
//	public List<TravelInfo> showHot(Model model, String pageNum) {
//		List<TravelInfo> hotList = travelService.showHot();
//
//		// 判断总数据，若大于时则只传输10条，小于十全传
//		if (hotList.size() > 10) {
//			for (int i = 10; i < hotList.size(); i++) {
//				hotList.remove(i);
//			}
//		}
//
//		for (int i = 0; i < hotList.size(); i++) {
//			byte[] b = hotList.get(i).getUser().getUserIcon();
//			String img_path = changeImg(b);
//			hotList.get(i).getUser().setUserHead(img_path);
//		}
//
//		model.addAttribute("pageNum", pageNum);
//		model.addAttribute("pageSize", 10);
//		int num = hotList.size() % 10;
//		if (num != 0) {
//			model.addAttribute("pageCount", hotList.size() / 10 + 1);
//		} else {
//			model.addAttribute("pageCount", hotList.size() / 10);
//		}
//		return hotList;
//	}
//
//	/*
//	 * 显示最新游记
//	 */
//	@RequestMapping("newest")
//	@ResponseBody
//	public List<TravelInfo> showNewest(Model model, String pageNum) {
//		List<TravelInfo> newList = travelService.showNewest();
//
//		// 判断总数据，若大于时则只传输10条，小于十全传
//		if (newList.size() > 10) {
//			for (int i = 10; i < newList.size(); i++) {
//				newList.remove(i);
//			}
//		}
//
//		for (int i = 0; i < newList.size(); i++) {
//			byte[] b = newList.get(i).getUser().getUserIcon();
//			String img_path = changeImg(b);
//			newList.get(i).getUser().setUserHead(img_path);
//		}
//
//		model.addAttribute("pageNum", pageNum);
//		model.addAttribute("pageSize", 10);
//		int num = newList.size() % 10;
//		if (num != 0) {
//			model.addAttribute("pageCount", newList.size() / 10 + 1);
//		} else {
//			model.addAttribute("pageCount", newList.size() / 10);
//		}
//		return newList;
//	}
//
//	/*
//	 * 显示指定的页
//	 */
//	@SuppressWarnings("null")
//	@RequestMapping("get_page")
//	@ResponseBody
//	public List<TravelInfo> getPage(Model model, String pageNum) {
//
//		List<TravelInfo> newList = travelService.showNewest();
//
//		List<TravelInfo> list = new ArrayList<TravelInfo>();
//
//		int nums = Integer.parseInt(pageNum);
//
//		model.addAttribute("pageNum", nums);
//		model.addAttribute("pageSize", 10);
//		int num = newList.size() % 10;
//		int n = 0;// 总页数
//
//		if (num != 0) {
//			model.addAttribute("pageCount", newList.size() / 10 + 1);
//			n = newList.size() / 10 + 1;
//		} else {
//			model.addAttribute("pageCount", newList.size() / 10);
//			n = newList.size() / 10;
//		}
//		if (n > nums) {
//			for (int i = (nums - 1) * 10; i < nums * 10; i++) {
//				list.add(newList.get(i));
//			}
//		} else if (n == nums) {
//			// 最后的一页，移除前面的页的内容
//			for (int i = (nums - 1) * 10; i < newList.size(); i++) {
//				list.add(newList.get(i));
//			}
//		}
////
////		for (int i = 0; i < newList.size(); i++) {
////			byte[] b = newList.get(i).getUser().getUserIcon();
////			String img_path = changeImg(b);
////			newList.get(i).getUser().setUserHead(img_path);
////		}
//
//		return list;
//	}


}
