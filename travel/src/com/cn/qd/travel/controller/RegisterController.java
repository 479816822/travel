package com.cn.qd.travel.controller;

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
import com.cn.qd.travel.service.UserService;
import com.cn.qd.travel.util.ChangeIcon;
import com.cn.qd.travel.util.GUID;

/**
 * @author anmeihua 用户注册 Controller
 */
@Controller
public class RegisterController {

	@Autowired
	UserService userService;

	/**
	 * 检查手机号是否存在
	 * 
	 */
	@RequestMapping(value = "/checkPhone")
	@ResponseBody
	public int checkPhone(String mdTelephone, Model model) {
		int ret = userService.checkPhone(mdTelephone);
		model.addAttribute("userPhone", mdTelephone);
		return ret;
	}

	/**
	 * 注册页面1
	 * 
	 */
	@RequestMapping(value = "/regist")
	public String goRegis() {
		return "register1";
	}

	/**
	 * 到注册页面2
	 * 
	 */
	@RequestMapping(value = "/regists", method = { RequestMethod.POST })
	public String goRegis1(Model model, MdUser user) {
		model.addAttribute("mdTelephone", user.getMdTelephone());
		return "register2";
	}


	/**
	 * 注册提交 注册成功转发到首页 注册失败重定向到注册2页面
	 */
	@RequestMapping("/register2")
	public String submit(Model model, MdUser user,HttpServletRequest request) {
		String savePath = request.getSession().getServletContext().getRealPath("upload");
		ChangeIcon chIcon=new ChangeIcon();
		byte[] pic=chIcon.getIcon(savePath);
		user.setMdUserRecid(GUID.createGuid());
		user.setMdSex("男");
		user.setMdCreateTime(new Date());
		user.setMdAge((short)18);
		user.setMdIsVip("否");
		user.setMdLevel("1");
		user.setMdPraise((long)0);
		user.setMdSignature("青春是一辈子的财富！！！");
		user.setMdIcon(pic);
		user.setMdScore((long)0);
		user.setMdStdname("未登陆");
		user.setMdAddress("北京");
		int ret = userService.insertSelective(user);
		if (ret > 0) {
			model.addAttribute("registMsg", "注册成功！");
			return "login";
		} else {
			model.addAttribute("registMsg", "网络异常，请重试！");
			return "register2";
		}
	}
 
	// 验证验证码
	@ResponseBody
	@RequestMapping(value = "checkCode", method = { RequestMethod.POST })
	public Map<String, String> addUser(@RequestBody MdUser user, HttpSession session) {
		String code1 = user.getCode();
		String code2 = session.getAttribute("code").toString();
		Map<String, String> result = new HashMap<String, String>();
		if (!code1.equalsIgnoreCase(code2)) { // 忽略验证码大小写
			result.put("success", "error");
			return result;
		} else {
			result.put("success", "success");
			return result;
		}
	}

}
