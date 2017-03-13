package com.cn.qd.travel.util;

import java.util.ArrayList;
import java.util.Calendar;

public class PageFinish {

	/**
	 * ��ʼ����ҳ ��ʼ�����ݻ���
	 */
	@SuppressWarnings("unchecked")
	public static Page initPage(int pageSize, Object data) {
		ArrayList<Object> dataList = (ArrayList<Object>) data;
		int pageCount = dataList.size() / pageSize;
		Page page = null;
		if (dataList.size() % pageSize != 0) {
			pageCount++;
		}
		// ��������
		String cacheName = "" + Calendar.getInstance();
		if (CacheFinish.memoryData(dataList, cacheName)) {
			page = new Page(pageCount, pageSize, cacheName, dataList.size());
		}
		return page;
	}

	/**
	 * ��ȡָ��ҳ������ ������ҳʱ,������ҳ��Ϊ-1
	 * 
	 * @param page
	 * @return
	 */
	public static ArrayList<?> getPageData(Page page) {
		// 1.ҳ�����
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
		// 2.��ȡ��ǰҳ������
		return CacheFinish.getData(page.getPageSize(), page.getPageCurrent(), page.getCache());
	}
}
