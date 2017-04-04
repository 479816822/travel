package com.cn.qd.travel.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.qd.travel.entity.MdUser;
import com.cn.qd.travel.service.TravelService;
import com.cn.qd.travel.service.UserService;

/**
 * 用户主页
 * 
 * @author langren
 *
 */
@Controller
public class HomeController {

	@Autowired
	UserService userService;
	@Autowired
	TravelService travelService;

	/**
	 * 用户个性签名修改
	 * 
	 * @param model
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "signatureUpdate", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String, String> signatureUpdate(MdUser user, Model model) {
		Map<String, String> result = new HashMap<String, String>();
		StringBuffer sql = new StringBuffer();
		sql.append("update MD_USER set MD_SIGNATURE='").append(user.getMdSignature() + "'");
		sql.append("where MD_USER_RECID='").append(user.getMdUserRecid() + "'");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sql", sql.toString());
		int ret = userService.updateBySql(map);
		if (ret > 0) {
			result.put("success", "success");
		} else {
			result.put("success", "error");
		}
		return result;
	}

	
	/**
	 * 用户留言
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "leaveWord")
	public String leaveWord(Model model, HttpSession session) {

		return "updateUserInfo";
	}
	
	/**
	 * 用户信息修改
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "updateUserNews")
	public String updateUserInfo(Model model, HttpSession session) {

		return "updateUserInfo";
	}

}
