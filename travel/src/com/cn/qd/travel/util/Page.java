package com.cn.qd.travel.util;

/**
 * ��ҳ��
 * 
 * @author liufu
 *
 */

public class Page {
	/**
	 * ��ǰҳ
	 */
	private int pageCurrent;
	/**
	 * ��ҳ��
	 */
	private int pageCount;
	/**
	 * ��һҳ
	 */
	private int nextPage;
	/**
	 * ��һҳ
	 */
	private int prePage;
	/**
	 * ÿҳ��С
	 */
	private int pageSize;
	
	/**
	 * ���ݻ�������
	 */
	private String cache;
	
	/**
	 * ��������
	 */
	private int dataCount;

	/**
	 * ��ʼ����ҳ�ؼ�
	 * 
	 * @param pageCount
	 * @param pageSize
	 */
	public Page(int pageCount, int pageSize,String cache,int number) {
		super();
		this.cache=cache;
		this.pageCurrent = 1;
		this.pageCount = pageCount;
		this.prePage = -1;
		this.pageSize = pageSize;
		this.dataCount=number;
		if (pageCount > pageSize) {
			this.nextPage = 2;
		} else {
			this.nextPage = 1;
		}
	}

	public int getPageCurrent() {
		return pageCurrent;
	}

	public void setPageCurrent(int pageCurrent) {
		this.pageCurrent = pageCurrent;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getPrePage() {
		return prePage;
	}

	public void setPrePage(int prePage) {
		this.prePage = prePage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String getCache() {
		return cache;
	}

	public void setCache(String cache) {
		this.cache = cache;
	}

	public int getDataCount() {
		return dataCount;
	}

	public void setDataCount(int dataCount) {
		this.dataCount = dataCount;
	}
	
	

}
