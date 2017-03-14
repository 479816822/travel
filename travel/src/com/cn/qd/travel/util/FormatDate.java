package com.cn.qd.travel.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * 日期格式化统一处理
 * @author liufu
 *
 */
public class FormatDate {

	
	/**
	 * 获取当前的系统时间格式为yyyy-MM-dd HH:mm:ss
	 * @return
	 */
	public static String getFormatDateStr() {
		Calendar date=Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		return dateFormat.format(date);
	}
	
	

	/**
	 * 获取当前的系统时间格式为yyyy-MM-dd
	 * @return
	 */
	public static String getFormatDateStrs() {
		Calendar date=Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		return dateFormat.format(date);
	}
	
	

	/**
	 * 传入时间转换格式为yyyy-MM-dd
	 * @return
	 */
	public static String ChangeFormatDateStrs(Date date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		return dateFormat.format(date);
	}
	

	/**
	 * 传入时间转换格式为yyyy-MM-dd HH:mm:ss
	 * @return
	 */
	public static String ChangeFormatDateStr(Date date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return dateFormat.format(date);
	}
	
	/**
	 * 获取传入时间的当前年
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
	 * 获取传入时间的当前月
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
	 * 获取传入时间的当前天
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
