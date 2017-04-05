package com.cn.qd.travel.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType; 

/**
 * 发送简单的邮件
 * @author langren
 *
 */

public class SendEmail {
	
	/**
	 * 根据邮箱地址和内容发送邮件
	 * @param email
	 * @param sendMessage
	 */
	public static int sendEmail(String email,String sendMessage,String emailTheme){
		Log log = Log.getLogger();
		 Properties prop = new Properties();  
         prop.setProperty("mail.transport.protocol", "smtp");//定义邮件发送协议  
         prop.setProperty("mail.smtp.host", "smtp.qq.com");//声明邮件服务器地址  
         prop.setProperty("mail.smtp.auth", "true");//发送权限，为true时表示允许发送  
         prop.setProperty("mail.debug", "true");//设置为true时，调试的时候可以在控制台显示信息  
           
           
         Session session = Session.getInstance(prop);//相当于建立了一条通信路线  
         Message msg = new MimeMessage(session);  
         Transport tran = null;
         try {
			msg.setFrom(new InternetAddress("479816822@qq.com"));//发件者邮箱 
			msg.setRecipient(RecipientType.TO, new InternetAddress(email));//收件邮箱  
			msg.setSubject(emailTheme);//标题
			msg.setText(sendMessage);
			tran = session.getTransport();
			tran.connect("479816822", "langren");
			tran.sendMessage(msg,msg.getAllRecipients());
		} catch (AddressException e) {
			log.logger.error("邮箱地址出错");
			return -1;
		} catch (MessagingException e) {
			log.logger.error("邮件发送失败");
			return -1;
		} 
         return 1;
	}
	
	
	/**
	 * 
	 * @param mobile
	 * @param content
	 * @throws UnsupportedEncodingException
	 */
	public static String sendTeleCode(String mobile, String content) throws UnsupportedEncodingException{
		Log log = Log.getLogger();
		 Integer x_eid = 0;//会员企业ID号,个人用户为0
		 String x_uid = "yourname";//会员账号
		 String x_pwd_md5 = "e10adc3949ba59abbe56e057f20f883e";//登陆密码的MD5值32位
		 Integer x_gate_id = 300;//发送短信时通道ID，通道发送失败可以切换其它通道，无该值系统使用默认通道
		
			
			Integer x_ac = 10;//发送信息
			HttpURLConnection httpconn = null;
			String x_memo = content.trim();//发送短信内容
			StringBuilder sb = new StringBuilder();
			
			sb.append("http://gateway.woxp.cn:6630/utf8/web_api/?x_eid=");
			sb.append(x_eid);
			sb.append("&x_uid=").append(x_uid);
			sb.append("&x_pwd_md5=").append(x_pwd_md5);
			sb.append("&x_ac=").append(x_ac);
			sb.append("&x_gate_id=").append(x_gate_id);
			sb.append("&x_target_no=").append(mobile);
			sb.append("&x_memo=").append(URLEncoder.encode(x_memo, "utf-8"));
			
			String result = "-20";
			System.out.println(sb.toString());
			try {
				URL url = new URL(sb.toString());
				httpconn = (HttpURLConnection) url.openConnection();
				BufferedReader rd = new BufferedReader(new InputStreamReader(httpconn.getInputStream()));
				result = rd.readLine();
				rd.close();
			} catch (MalformedURLException e) {
				log.logger.error("短信发送失败");
			} catch (IOException e) {
				log.logger.error("短信发送失败");
			} finally{
				if(httpconn != null){
					httpconn.disconnect();
					httpconn = null;
				}
			}
		return result;
	}

}
