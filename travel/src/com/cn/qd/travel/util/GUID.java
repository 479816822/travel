package com.cn.qd.travel.util;

import java.util.Calendar;

/**
 * �������һ��25λ���ظ�����
 * ���б����������
 * 12λӢ�Ĵ�д�ַ���18λ�ı���ʱ���hashcode���
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
	 * ����25λ�������ظ����ַ���
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
	 * ��ȡ25λ�������ظ����ַ���
	 * @return
	 */
	public  String getGUID() {
		return GUID;
	}

}
