package com.cn.qd.travel.service;

import java.util.Map;

import com.cn.qd.travel.core.Service;
import com.cn.qd.travel.entity.MDTravelNote;

/**
 * 游记处理服务
 * @author liufu
 *
 * @param <TClass>
 */

public interface TravelService extends Service {

	/**
	 * 新增游记
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean insertTravel(MDTravelNote T,Map<String, Object> map);
	
	/**
	 * 修改游记
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean updateTravel(MDTravelNote T,Map<String, Object> map);
	
	
	/**
	 * 删除游记
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean deleteTravel(MDTravelNote T,Map<String, Object> map);
}
