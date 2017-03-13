package com.cn.qd.travel.service;

import java.util.Map;

import com.cn.qd.travel.core.Service;
import com.cn.qd.travel.entity.MDTravelNote;

/**
 * �μǴ������
 * @author liufu
 *
 * @param <TClass>
 */

public interface TravelService extends Service {

	/**
	 * �����μ�
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean insertTravel(MDTravelNote T,Map<String, Object> map);
	
	/**
	 * �޸��μ�
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean updateTravel(MDTravelNote T,Map<String, Object> map);
	
	
	/**
	 * ɾ���μ�
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean deleteTravel(MDTravelNote T,Map<String, Object> map);
}
