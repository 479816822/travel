package com.cn.qd.travel.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
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

import com.cn.qd.travel.entity.MdUser;
import com.cn.qd.travel.entity.MdUserLeaveMessage;
import com.cn.qd.travel.service.CommentLeavelService;
import com.cn.qd.travel.service.TravelService;
import com.cn.qd.travel.service.UserService;
import com.cn.qd.travel.util.ChangeIcon;
import com.cn.qd.travel.util.GUID;
import com.cn.qd.travel.util.Log;

/**
 * 用户主页
 * 
 * @author langren
 *
 */
@Controller
public class HomeController {
	private Log log = Log.getLogger();
	@Autowired
	UserService userService;
	@Autowired
	TravelService travelService;
	@Autowired
	CommentLeavelService commentService;

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
	public Map<String, String> signatureUpdate(MdUser user, Model model,HttpSession session) {
		MdUser users=(MdUser)session.getAttribute("user");
		Map<String, String> result = new HashMap<String, String>();
		StringBuffer sql = new StringBuffer();
		sql.append("update MD_USER set MD_SIGNATURE='").append(user.getMdSignature() + "'");
		sql.append("where MD_USER_RECID='").append(user.getMdUserRecid() + "'");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("sql", sql.toString());
		int ret = userService.updateBySql(map);
		if (ret > 0) {
			if(users!=null){
				users.setMdSignature(user.getMdSignature());
				session.setAttribute("user", users);
			}
			result.put("success", "success");
		} else {
			result.put("success", "error");
		}
		return result;
	}

	/**
	 * 用户留言
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "leaveWord", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String, MdUserLeaveMessage> leaveWord(Model model, HttpSession session, MdUserLeaveMessage message) {
		Map<String, MdUserLeaveMessage> result = new HashMap<String, MdUserLeaveMessage>();
		MdUser user = (MdUser) session.getAttribute("user");
		if(user!=null){
			message.setMdLvRecid(GUID.createGuid());
			message.setMdLvTime(new Date());
			message.setMdLvUserRecid(user.getMdUserRecid());
			message.setLvUser(user);
			int ret = commentService.insert(message, null);
			if (ret > 0) {
				SimpleDateFormat sim=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				message.setMdLvDate(sim.format(message.getMdLvTime()));
				result.put("message", message);
			} else {
				result.put("result", null);
			}
		}
		return result;
	}

	/**
	 * 用户信息修改
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "updateUserNews")
	public String updateUserInfo(Model model, HttpSession session) {
		return "alterInfo/message";
	}

	/**
	 * 用户信息修改
	 * 
	 * @param model
	 * @param session
	 * @return
	 */

	@SuppressWarnings("deprecation")
	@RequestMapping(value = "userinfo", method = { RequestMethod.POST })
	@ResponseBody
	public String updateUserInfos(Model model, HttpSession session, @RequestBody String[] objArray) {
		MdUser loginUser = (MdUser) session.getAttribute("user");
		if (loginUser == null) {
			return "alterInfo/message";
		} else {
			if (objArray[2] != null) {
				loginUser.setMdAddress(objArray[2]);
			}
			if (objArray[4] != null) {
				loginUser.setMdSignature(objArray[4]);
			}
			if (objArray[0] != null) {
				loginUser.setMdUserName(objArray[0]);
			}
			if (objArray[3] != null) {
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Date date = null;
				try {
					date = format.parse(objArray[3]);
				} catch (Exception e) {
					log.logger.error("日期转换出错");
				}
				loginUser.setMdAlertDate(date);
			}
			if (objArray[1] != null) {
				loginUser.setMdSex(objArray[1]);
			}
			Date date1 = loginUser.getMdAlertDate();
			Date date = new Date();
			int ret = userService.updateUserInfo(loginUser);
			if (ret > 0) {
				if (date1 != null) {
					int age = date.getYear() - date1.getYear();
					loginUser.setMdAge(Short.valueOf("" + age));
				}
				session.setAttribute("user", loginUser);
			}
		}
		return "myHome";
	}

	/**
	 * 我的头像
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "avatar")
	public String updateHeader(Model model, HttpSession session) {
		return "alterInfo/avatar";
	}
	
	/**
	 * 修改我的头像
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "updateHeaderImg",method = { RequestMethod.POST })
	@ResponseBody
	public int updateHeaderImg(String str, HttpSession session,HttpServletRequest request) {
		MdUser loginUser = (MdUser) session.getAttribute("user");
		if(loginUser!=null){
			String savePath = request.getSession().getServletContext().getRealPath(str);
			loginUser.setMdIcon(ChangeIcon.readImg(savePath));
			String[] strs=savePath.split("upload");
			if(strs.length>0)
			loginUser.setUserHeadImg("upload\\"+strs[1]);
			int ret = userService.updateUserInfo(loginUser);
			if(ret>0){
				session.setAttribute("user", loginUser);
				return ret;	
			}
		}
		return 0;
	}

	/**
	 * 账户安全
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "security")
	public String updateSafe(Model model, HttpSession session) {

		return "alterInfo/accounts";
	}

	/**
	 * 我的钱包
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "wallet")
	public String updateWalter(Model model, HttpSession session) {
		return "alterInfo/wallet";
	}
	
	/**
	 * 更改手机
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "setMobile")
	public String setMonile(Model model, HttpSession session) {
		return "alterInfo/setMobile";
	}

	
	/**
	 * 设置邮箱
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "setMail")
	public String setMail(Model model, HttpSession session) {
		return "alterInfo/setMail";
	}


	/**
	 * 添加收货地址
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "address")
	public String newAddress(Model model, HttpSession session) {
		return "alterInfo/newAddress";
	}

}
