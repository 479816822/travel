package com.cn.qd.travel.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.cn.qd.travel.core.BaseService;
import com.cn.qd.travel.entity.MDTravelNote;
import com.cn.qd.travel.util.Page;

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
	 * 查询指定条件的游记
	 * 
	 * @param travelNote
	 * @param choose
	 * @return
	 */
	List<MDTravelNote> selectTravelList(MDTravelNote travelNote, String choose);

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

	public Page getPage();

	public void setPage(Page page);
}
