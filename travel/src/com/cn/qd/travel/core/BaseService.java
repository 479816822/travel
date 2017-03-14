package com.cn.qd.travel.core;

import java.util.ArrayList;
import java.util.Map;

/**
 * 所有服务接口,统一实现对数据库进行操作
 * @author liufu
 *
 */
public interface BaseService{

	
	/**
	 * 通过传入的类,字段进行数据增加
	 * 其余的字段采用map传值
	 * @param t
	 * @param map
	 * @return
	 */
	public int insert(Object t,Map<String, Object> map);
	
	/**
	 * 通过传入的类,进行数据修改
	 * 采用map传值
	 * @param t
	 * @param map
	 * @return
	 */
	public int update(Object t,Map<String, Object> map);
	
	/**
	 * 通过传入的类,进行数据删除
	 * 采用map传值
	 * @param t
	 * @param map
	 * @return
	 */
	public int delete(Object t,Map<String, Object> map);
	
	
	/**
	 * 通过传入的类,查询当行的数据
	 * 采用map传值
	 * @param t
	 * @param map
	 * @return
	 */
	public ArrayList<Object> oneResultProvider(Object t,Map<String, Object> map);
	
	/**
	 * 通过传入的类,查询多行的数据
	 * 采用map传值
	 * @param t
	 * @param map
	 * @return
	 */
	public ArrayList<Object> oneListResultProvider(Object t,Map<String, Object> map);
	
}
