package com.cn.qd.travel.controller;

import java.io.UnsupportedEncodingException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.qd.travel.entity.MdUser;
import com.cn.qd.travel.service.UserService;
import com.cn.qd.travel.util.Log;
import com.cn.qd.travel.util.SendEmail;

/**
 * 用戶找回密碼
 * 
 * @author langren
 *
 */
@Controller
public class FoundPasswordController {

	private Log log = Log.getLogger();
	@Autowired
	UserService userService;

	@RequestMapping(value = "forget")
	public String toForgrtOne() {
		return "forget";
	}

	/**
	 * 收到验证码，修改密码
	 * 
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "forgets")
	public String toForgrtTwo(MdUser user, Model model) {
		int code=foundPassword(user.getPassport());
		model.addAttribute("user", user);
		model.addAttribute("code", code);
		return "forget2";
	}

	/**
	 * 再次发送验证码
	 * 
	 * @param str
	 * @param model
	 * @return
	 */
	@RequestMapping("sendCode")
	@ResponseBody
	public int againSendCode(String mdTelephone, Model model) {
		return foundPassword(mdTelephone);
	}
	
	private int foundPassword(String mdTelephone){
		String reg = "^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$";
		Pattern p = Pattern.compile(reg);
		Matcher m = p.matcher(mdTelephone);
		boolean t = m.matches();
		int retNum=0;
		int checkCode=((int)Math.random()*1000000)+100000;
		if (t) {// 邮箱找回,给邮箱发送六位数字
			String sendMessage="你的验证码为"+checkCode+"三十分钟有效!!!\n        发自'爱旅U'";
			String emailTheme="找回密码";
			int ret=SendEmail.sendEmail(mdTelephone, sendMessage, emailTheme);
			if(ret==1){
				retNum=checkCode;
			}
		} else {// 电话号码找回
			try {
				String retCode=SendEmail.sendTeleCode(mdTelephone, String.valueOf(checkCode));
				if(Integer.valueOf(retCode)>0){//发送成功
					retNum=Integer.valueOf(retCode);
				}
			} catch (UnsupportedEncodingException e) {
				log.logger.error("短信发送失败");
			}
		}
		return retNum;
	}
	
	
	/**
	 * 找回修改密码
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "foundPass")
	public String updatePassword(MdUser user, Model model) {
		int ret=userService.updateUserPass(user,null);
		if(ret>0){
			model.addAttribute("retMessage", "找回密码成功");
		}else{
			model.addAttribute("retMessage", "找回密码失败");
		}
			return "login";
	}


}
