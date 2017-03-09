package com.cn.qd.travel.core;

import java.util.List;
import java.util.Map;

/**
 * 所有服务接口,统一实现对数据库进行操作
 * 1.TClass 是对应的类
 * @author liufu
 *
 */
public interface Service<TClass> {

	
	/**
	 * 通过传入的类,字段进行数据增加
	 * 其余的字段采用map传值
	 * @param t
	 * @param map
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public int insert(TClass t,Map map);
	
	/**
	 * 通过传入的类,进行数据修改
	 * 采用map传值
	 * @param t
	 * @param map
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public int update(TClass t,Map map);
	
	/**
	 * 通过传入的类,进行数据删除
	 * 采用map传值
	 * @param t
	 * @param map
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public int delete(TClass t,Map map);
	
	
	/**
	 * 通过传入的类,查询当行的数据
	 * 采用map传值
	 * @param t
	 * @param map
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public List<TClass> oneResultProvider(TClass t,Map map);
	
	/**
	 * 通过传入的类,查询多行的数据
	 * 采用map传值
	 * @param t
	 * @param map
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public List<TClass> oneListResultProvider(TClass t,Map map);
	
}
