package com.cn.qd.travel.service;

import java.util.Map;

import com.cn.qd.travel.core.BaseService;
import com.cn.qd.travel.entity.MDTravelNote;

import org.springframework.stereotype.Service;

/**
 * 游记处理服务
 * 
 * @author liufu
 *
 * @param <TClass>
 */

@Service
public interface TravelService extends BaseService {

	/**
	 * 新增游记
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean insertTravel(MDTravelNote T, Map<String, Object> map);

	/**
	 * 修改游记
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean updateTravel(MDTravelNote T, Map<String, Object> map);

	/**
	 * 删除游记
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean deleteTravel(MDTravelNote T, Map<String, Object> map);
}
