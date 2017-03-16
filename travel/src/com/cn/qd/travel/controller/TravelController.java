package com.cn.qd.travel.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public int saveTravel(@RequestBody String[] objArray, HttpSession session) {
		MdUser user = (MdUser) session.getAttribute("loginUser");
		String travelId = GUID.createGuid();
		// 进行数据封装
		MDTravelParagraph travel = null;
		List<MDTravelParagraph> travelList = new ArrayList<MDTravelParagraph>();
		for (int i = 0; i < objArray.length - 2; i++) {
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
			travel.setMdRecid(GUID.createGuid());
			travel.setMdTavelId(travelId);
			travelList.add(travel);
		}
		MDTravelNote travelInfo = new MDTravelNote();
		travelInfo.setMdThemeImg(objArray[objArray.length - 1]);
		travelInfo.setMdTheme(objArray[objArray.length - 2]);
		travelInfo.setListTravlePagragraph(travelList);
		travelInfo.setMdRecid(travelId);
		travelInfo.setUser(user);
		boolean trueOrFfalse = travelService.insertTravel(travelInfo, null);
		if (trueOrFfalse) {
			return 3;
		}
		return 0;
	}

	// 游记写入成功插入数据库
	@RequestMapping(value = "test")
	public String test(Model model, HttpServletRequest request) {
		// 用户
		// MdUser user = (MdUser) session.getAttribute("user");
		// 进行数据封装
		return "Writetravel";
	}

}
