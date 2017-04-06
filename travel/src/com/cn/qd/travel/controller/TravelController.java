package com.cn.qd.travel.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.cn.qd.travel.util.ChangeIcon;
import com.cn.qd.travel.util.GUID;
import com.cn.qd.travel.util.Log;

@Controller
public class TravelController {
	private Log log = Log.getLogger();

	@Autowired
	TravelService travelService;

	// 游记写入成功插入数据库
	@RequestMapping(value = "writeTravel", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String, String> saveTravel(@RequestBody String[] objArray, HttpSession session) {
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
		travelInfo.setMdCreateTime(new Date());
		travelInfo.setMdCreateUserId(user.getMdUserRecid());
		travelInfo.setMdStdname("0");
		travelInfo.setMdLevel(Short.valueOf("1"));
		boolean trueOrFfalse = travelService.insertTravel(travelInfo, null);
		Map<String, String> result = new HashMap<String, String>();
		if (trueOrFfalse) {
			result.put("id", travelInfo.getMdRecid());
			return result;
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
	public String showTravel(Model model, HttpSession session, String traId, String userId,
			HttpServletRequest request) {
		ArrayList<Object> travels = new ArrayList<Object>();
		travels.addAll(travelService.oneResultProvider(traId, null));
		MDTravelNote travelInfo = null;
		if (travels.size() >= 1) {
			travelInfo = (MDTravelNote) travels.get(0);
		}

		String savePath = request.getSession().getServletContext().getRealPath("upload");
		String userHeadImg = ChangeIcon.changeImg(travelInfo.getUser().getMdIcon(), savePath);
		travelInfo.getUser().setUserHeadImg(userHeadImg);
		
		SimpleDateFormat sim=new SimpleDateFormat("YYYY-MM-DD");
		String date=sim.format(travelInfo.getMdStartTime());
		travelInfo.setMdStartTime(new Date(date));
		model.addAttribute("travelInfos", travelInfo);
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
	@RequestMapping(value = "updatePraise", method = { RequestMethod.POST })
	@ResponseBody
	public int updateTravelPraise(Model model, HttpSession session, MDTravelNote travel) {
		StringBuffer sql = new StringBuffer();
		if (travel.getMdStdname() != null && !"".equals(travel.getMdStdname())) {
			travel.setMdStdname(String.valueOf((Integer.valueOf(travel.getMdStdname()) + 1)));
			sql.append("set MD_STDNAME =").append(Integer.valueOf(travel.getMdStdname()) + 1);
		} else {
			travel.setMdStdname(String.valueOf(1));
			sql.append("MD_STDNAME =").append(1);
		}
		sql.append("where MDRECID='").append(travel.getMdRecid() + "'");
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("sql", sql.toString());
		return travelService.update(travel, null);
	}

	/**
	 * 更新游记的基本信息
	 * 
	 * @param model
	 * @param session
	 * @param travel
	 * @return
	 */
	@RequestMapping(value = "updateTravelNews", method = { RequestMethod.POST })
	@ResponseBody
	public int updateTravelNew(Model model, @RequestBody String[] objArray) {
		MDTravelNote travels = new MDTravelNote();
		travels.setMdRecid(objArray[0]);
		travels.setMdTravelPeople(objArray[1]);
		travels.setMdCostMoney(Long.valueOf(objArray[2]));
		travels.setMdDayNumber(Short.valueOf(objArray[3]));
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = null;
		try {
			date = format.parse(objArray[4]);
		} catch (Exception e) {
			log.logger.error("日期转换出错");
		}
		travels.setMdStartTime(date);
		if (travelService.updateTravel(travels, null)) {
			return 1;
		}
		return 0;
	}

}
