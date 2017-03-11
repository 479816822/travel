package com.cn.qd.travel.core;

import java.util.Map;

/**
 * 提供创建易用的sql
 * 
 * @author liufu
 *
 */
public class DataBaseinfo {

	/**
	 * 创建sql语句
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

	// 枚举
	public enum enumMethod {
		Add, Update, Delete
	}
}
