package com.cn.qd.travel.util;

import java.util.ArrayList;
import java.util.Calendar;

public class PageFinish {

	/**
	 * 初始化分页 初始化数据缓存
	 */
	@SuppressWarnings("unchecked")
	public static Page initPage(int pageSize, Object data) {
		ArrayList<Object> dataList = (ArrayList<Object>) data;
		int pageCount = dataList.size() / pageSize;
		Page page = null;
		if (dataList.size() % pageSize != 0) {
			pageCount++;
		}
		// 缓存数据
		String cacheName = "" + Calendar.getInstance();
		if (CacheFinish.memoryData(dataList, cacheName)) {
			page = new Page(pageCount, pageSize, cacheName, dataList.size());
		}
		return page;
	}

	/**
	 * 获取指定页的数据 无上下页时,把上下页置为-1
	 * 
	 * @param page
	 * @return
	 */
	public static ArrayList<?> getPageData(Page page) {
		// 1.页码调整
		if (page.getPageCurrent() < page.getPageCount()) {
			page.setNextPage((page.getPageCurrent() + 1));
			if (page.getPageCurrent() == 1) {
				page.setPrePage(-1);
			} else {
				page.setPrePage((page.getPageCurrent() - 1));
			}
		} else if (page.getPageCurrent() >= page.getPageCount()) {
			page.setPageCurrent(page.getPageCount());
			page.setNextPage(-1);
			if (page.getPageCurrent() == 1) {
				page.setPrePage(-1);
			} else {
				page.setPrePage(page.getPageCurrent() - 1);
			}

		}
		System.out.println(page.getNextPage() + "jj" + page.getPageCurrent() + "dddd" + page.getPrePage());
		// 2.获取当前页的数据
		return CacheFinish.getData(page.getPageSize(), page.getPageCurrent(), page.getCache());
	}
}
