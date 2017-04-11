package com.cn.qd.travel.util;

import java.util.ArrayList;

public class PageFinish {

	/**
	 * 初始化分页 初始化数据缓存
	 */
	@SuppressWarnings("unchecked")
	public static Page initPage(int pageSize, Object data,String cacheName) {
		ArrayList<Object> dataList = (ArrayList<Object>) data;
		int pageCount = dataList.size() / pageSize;
		Page page = null;
		if (dataList.size() % pageSize != 0) {
			pageCount++;
		}
		// 缓存数据
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
		
		if(page.getPageCount()==0&&page.getDataCount()==0){
			long dataNums=CacheFinish.getDataByLong(page.getCache());
			page.setDataCount((int)dataNums);
			int pageCount = (int)dataNums / page.getPageSize();
			if ((int)dataNums % page.getPageSize() != 0) {
				pageCount++;
			}
			page.setPageCount(pageCount);
		}
		
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
		// 2.获取当前页的数据
		return CacheFinish.getData(page.getPageSize(), page.getPageCurrent(), page.getCache());
	}
	
	/**
	 * 获取指定页的数据 无上下页时,把上下页置为-1
	 * 
	 * @param page
	 * @return
	 */
	public static ArrayList<?> getCurrentPageData(Page page) {
		// 2.获取当前页的数据
		return CacheFinish.getData(page.getPageSize(), page.getPageCurrent(), page.getCache());
	}
}
