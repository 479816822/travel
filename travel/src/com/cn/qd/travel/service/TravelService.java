package com.cn.qd.travel.service;

import java.util.Map;

import com.cn.qd.travel.core.Service;

/**
 * �μǴ������
 * @author liufu
 *
 * @param <TClass>
 */

public interface TravelService<TClass> extends Service<TClass> {

	/**
	 * �����μ�
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean insertTravel(TClass T,Map<String, Object> map);
	
	/**
	 * �޸��μ�
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean updateTravel(TClass T,Map<String, Object> map);
	
	
	/**
	 * ɾ���μ�
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean deleteTravel(TClass T,Map<String, Object> map);
}
