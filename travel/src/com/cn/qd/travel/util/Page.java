package com.cn.qd.travel.util;

/**
 * 分页类
 * 
 * @author liufu
 *
 */

public class Page {
	/**
	 * 当前页
	 */
	private int pageCurrent;
	/**
	 * 总页数
	 */
	private int pageCount;
	/**
	 * 下一页
	 */
	private int nextPage;
	/**
	 * 上一页
	 */
	private int prePage;
	/**
	 * 每页大小
	 */
	private int pageSize;
	
	/**
	 * 数据缓存名字
	 */
	private String cache;
	
	/**
	 * 数据总数
	 */
	private int dataCount;

	/**
	 * 初始化分页控件
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
