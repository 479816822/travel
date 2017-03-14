package com.cn.qd.travel.util;

import java.util.Calendar;

/**
 * 随机生成一个25位不重复的数
 * 所有表的主键调用
 * 12位英文大写字符及18位的本地时间的hashcode组成
 * 
 * @author liufu
 *
 */
public class GUID {

	public  String GUID;

	public GUID() {
		GUID =createGuid();
	}

	/**
	 * 生成25位的永不重复的字符串
	 * @return
	 */
	private static String createGuid() {
		Calendar c = Calendar.getInstance();
		Long l = c.getTimeInMillis();
		int num = 0;
		StringBuffer str = new StringBuffer();
		for(int i=0;i<=2;i++){
			num = (int) (Math.random() * 25)+65;
			str.append((char)num);
		}
		str.append(l.toString());
		num = (int) (Math.random() * 100000);
		str.append(num);
		for(int i=0;i<=3;i++){
			num = (int) (Math.random() * 25)+65;
			str.append((char)num);
		}
		return str.toString();
	}
	
	/**
	 * 获取25位的永不重复的字符串
	 * @return
	 */
	public  String getGUID() {
		return GUID;
	}

}
