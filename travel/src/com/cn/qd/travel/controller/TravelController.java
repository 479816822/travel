package com.cn.qd.travel.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.qd.travel.entity.MDTravelNote;
import com.cn.qd.travel.entity.MDTravelParagraph;
import com.cn.qd.travel.entity.MdUser;
import com.cn.qd.travel.service.TravelService;
import com.cn.qd.travel.util.GUID;

@Controller
public class TravelController {

	@Autowired
	TravelService travelService;

	// 游记写入成功插入数据库
	@RequestMapping(value = "writeTravel", method = { RequestMethod.POST })
	public Object saveTravel(@RequestBody String[] objArray, HttpSession session) {
		MdUser user = (MdUser) session.getAttribute("loginUser");
		String travelId = GUID.createGuid();
		// 进行数据封装
		MDTravelParagraph travel = null;
		List<MDTravelParagraph> travelList = new ArrayList<MDTravelParagraph>();
		for (int i = 0; i < objArray.length - 3; i++) {
			if (objArray[i].startsWith("0")) {
				travel = new MDTravelParagraph();
				travel.setMdContent(objArray[i].substring(1));
			} else if (objArray[i].startsWith("1")) {
				travel = new MDTravelParagraph();
				travel.setMdImg(objArray[i].substring(1));
			} else if (objArray[i].startsWith("2")) {
				travel = new MDTravelParagraph();
				travel.setMdParagraphName(objArray[i].substring(1));
			} else if (objArray[i].startsWith("3")) {
				travel = new MDTravelParagraph();
				travel.setMdVideo(objArray[i].substring(3));
			}
			travel.setMdStdcode((short) i);
			travel.setMdRecid(GUID.createGuid());
			travel.setMdTavelId(travelId);
			travelList.add(travel);
		}
		MDTravelNote travelInfo = new MDTravelNote();
		if (objArray[objArray.length - 2] != null)
			travelInfo.setMdThemeImg(objArray[objArray.length - 2]);
		if (objArray[objArray.length - 3] != null)
			travelInfo.setMdTheme(objArray[objArray.length - 3]);
		if (objArray[objArray.length - 1] != null)
			travelInfo.setMdMusic(objArray[objArray.length - 1]);
		travelInfo.setListTravlePagragraph(travelList);
		travelInfo.setMdRecid(travelId);
		travelInfo.setUser(user);
		boolean trueOrFfalse = travelService.insertTravel(travelInfo, null);
		if (trueOrFfalse) {
			return trueOrFfalse;
		} else {
			return null;
		}
	}

	// 游记写入成功插入数据库
	@RequestMapping(value = "to_Writetravel")
	public String test(Model model, HttpServletRequest request) {
		// 用户
		// MdUser user = (MdUser) session.getAttribute("user");
		// 进行数据封装
		return "Writetravel";
	}

	/**
	 * 根据游记id查询
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "showTravel")
	public String showTravel(Model model, HttpSession session) {
		ArrayList<Object> travels = new ArrayList<Object>();
		travels.addAll(travelService.oneResultProvider("CEE149094883048298964LCQP", null));
		MDTravelNote travelInfo = null;
		if (travels.size() >= 1) {
			travelInfo = (MDTravelNote) travels.get(0);
		}
		model.addAttribute("travelInfo", travelInfo);
		return "show_travels";
	}

	/**
	 * 网站首页，每页的游记显示数为20条
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "toIndex")
	public String toIndex(Model model, HttpSession session) {

		return "index";
	}

	/**
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "toMyTravel")
	public String toMyTravel(Model model, HttpSession session) {
		return "mytravels";
	}

	/**
	 * 更新用户游记赞数
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "updatePraise",method = { RequestMethod.POST })
	@ResponseBody
	public int updateTravelPraise(Model model, HttpSession session, MDTravelNote travel) {
		StringBuffer sql = new StringBuffer();
		if(travel.getMdStdname()!=null&&!"".equals(travel.getMdStdname())){
			travel.setMdStdname(String.valueOf((Integer.valueOf(travel.getMdStdname()) + 1)));
			sql.append("set MD_STDNAME =").append(Integer.valueOf(travel.getMdStdname()) + 1);
		}
		else{
			travel.setMdStdname(String.valueOf(1));
			sql.append("MD_STDNAME =").append(1);
		}
		sql.append("where MDRECID='").append(travel.getMdRecid() + "'");
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("sql", sql.toString());
		return travelService.update(travel, null);
	}

}
