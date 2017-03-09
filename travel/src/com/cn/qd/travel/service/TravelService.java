package com.cn.qd.travel.service;

import java.util.Map;

import com.cn.qd.travel.core.Service;

/**
 * 游记处理服务
 * @author liufu
 *
 * @param <TClass>
 */

public interface TravelService<TClass> extends Service<TClass> {

	/**
	 * 新增游记
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean insertTravel(TClass T,Map<String, Object> map);
	
	/**
	 * 修改游记
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean updateTravel(TClass T,Map<String, Object> map);
	
	
	/**
	 * 删除游记
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean deleteTravel(TClass T,Map<String, Object> map);
}
