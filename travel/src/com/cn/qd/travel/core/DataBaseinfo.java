package com.cn.qd.travel.core;

import java.util.Map;

/**
 * �ṩ�������õ�sql
 * 
 * @author liufu
 *
 */
public class DataBaseinfo {

	/**
	 * ����sql���
	 */
	private String sql;
	private Map<String, Object> map;

	public String getSql() {
		return sql;
	}

	public void setSql(String sql) {
		this.sql = sql;
	}

	public Map<String, Object> getMap() {
		return map;
	}

	public void setMap(Map<String, Object> map) {
		this.map = map;
	}

	// ö��
	public enum enumMethod {
		Add, Update, Delete
	}
}
