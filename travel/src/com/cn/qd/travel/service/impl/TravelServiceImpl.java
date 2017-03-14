package com.cn.qd.travel.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.cn.qd.travel.dao.MDTravelNoteMapper;
import com.cn.qd.travel.dao.MDTravelParagraphMapper;
import com.cn.qd.travel.entity.MDTravelNote;
import com.cn.qd.travel.service.TravelService;
import com.cn.qd.travel.util.Page;
import com.cn.qd.travel.util.PageFinish;

/**
 * 游记服务处理类
 * 
 * @author liufu
 *
 * @param <Object>
 */

public class TravelServiceImpl implements TravelService {

	private Page page;
	MDTravelNoteMapper travel;
	MDTravelParagraphMapper parageaph;

	@Override
	public int insert(Object t, Map<String, Object> map) {
		return 0;
	}

	@Override
	public int update(Object t, Map<String, Object> map) {
		return 0;
	}

	@Override
	public int delete(Object t, Map<String, Object> map) {
		return 0;
	}

	@Override
	public ArrayList<Object> oneResultProvider(Object t, Map<String, Object> map) {
		return null;
	}

	/**
	 * 查询所有 采用缓存
	 */
	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<Object> oneListResultProvider(Object t, Map<String, Object> map) {

		List<MDTravelNote> travelList = travel.selectList();
		page = PageFinish.initPage(20, travelList);
		ArrayList<Object> pageTravelList = (ArrayList<Object>) PageFinish.getPageData(page);
		return pageTravelList;
	}

	/**
	 * 新增游记
	 */
	@Override
	public boolean insertTravel(MDTravelNote trNote, Map<String, Object> map) {
		travel.insert(trNote);
		for (int i = 0; i < trNote.getListTravlePagragraph().size(); i++) {
			trNote.getListTravlePagragraph().get(i).setMdTavelId(trNote.getMdRecid());
			parageaph.insert(trNote.getListTravlePagragraph().get(i));
		}
		return false;
	}

	@Override
	public boolean updateTravel(MDTravelNote T, Map<String, Object> map) {
		return false;
	}

	@Override
	public boolean deleteTravel(MDTravelNote T, Map<String, Object> map) {
		return false;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

}
