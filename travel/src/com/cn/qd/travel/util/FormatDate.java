package com.cn.qd.travel.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * ���ڸ�ʽ��ͳһ����
 * @author liufu
 *
 */
public class FormatDate {

	
	/**
	 * ��ȡ��ǰ��ϵͳʱ���ʽΪyyyy-MM-dd HH:mm:ss
	 * @return
	 */
	public static String getFormatDateStr() {
		Calendar date=Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		return dateFormat.format(date);
	}
	
	

	/**
	 * ��ȡ��ǰ��ϵͳʱ���ʽΪyyyy-MM-dd
	 * @return
	 */
	public static String getFormatDateStrs() {
		Calendar date=Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		return dateFormat.format(date);
	}
	
	

	/**
	 * ����ʱ��ת����ʽΪyyyy-MM-dd
	 * @return
	 */
	public static String ChangeFormatDateStrs(Date date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		return dateFormat.format(date);
	}
	

	/**
	 * ����ʱ��ת����ʽΪyyyy-MM-dd HH:mm:ss
	 * @return
	 */
	public static String ChangeFormatDateStr(Date date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return dateFormat.format(date);
	}
	
	/**
	 * ��ȡ����ʱ��ĵ�ǰ��
	 * @return
	 */
	public static String getYear(Date date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String day=null;
		if(date!=null){
			 day=dateFormat.format(date);
			String days[]= day.split("-");
			if(days.length>0){
				day=days[0];
			}
		}
		return day;
	}
	/**
	 * ��ȡ����ʱ��ĵ�ǰ��
	 * @return
	 */
	public static String getMonth(Date date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String day=null;
		if(date!=null){
			 day=dateFormat.format(date);
			String days[]= day.split("-");
			if(days.length>0){
				day=days[1];
			}
		}
		return day;
	}
	/**
	 * ��ȡ����ʱ��ĵ�ǰ��
	 * @return
	 */
	public static String getDay(Date date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String day=null;
		if(date!=null){
			 day=dateFormat.format(date);
			String days[]= day.split("-");
			if(days.length>0){
				day=days[2];
			}
		}
		return day;
	}
	
	
	
}
