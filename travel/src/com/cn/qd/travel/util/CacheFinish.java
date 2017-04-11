package com.cn.qd.travel.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.cn.qd.travel.core.Cache;
import com.cn.qd.travel.core.CacheManager;

/**
 * 调用实现缓存数据 1.缓存数据 2.读取数据
 * 
 * @author liufu
 *
 */
public class CacheFinish {

	/**
	 * 创建缓存
	 * 
	 * @return
	 */
	public static boolean memoryData(ArrayList<?> t, String cacheName) {
		Cache cache=new Cache();
		Map<String,Object> map=new HashMap<String,Object>();
		for (int i = 0; i < t.size(); i++) {
			map.put(""+i, t.get(i));
		}
		cache.setValue(map);
		CacheManager.putCacheInfo(cacheName,cache, 900000000, false);
		return true;
	}

	/**
	 * 获取指定缓存的数据
	 * 
	 * @return
	 */
	@SuppressWarnings({ "rawtypes"})
	public static ArrayList getData(int pageSize,int pageCurrent,String cacheName) {
		Cache cache = CacheManager.getCacheInfo(cacheName);
		Cache ch=(Cache)cache.getValue();
		HashMap map = (HashMap)ch.getValue();
		ArrayList<Object> retList=new ArrayList<Object>();
		for (int i = 0; i < pageSize; i++) {
			retList.add(map.get(""+(pageSize * (pageCurrent - 1 )+ i)));
		}
		return retList;
	}

	/**
	 * 获取指定缓存的指定数据
	 * 
	 * @return
	 */
	public static boolean getDataByString(String cacheName, ArrayList<String> list) {

		return true;
	}

	/**
	 * 获取指定缓存的数据的大小
	 * 
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public static long getDataByLong(String cacheName) {
		Cache cache = CacheManager.getCacheInfo(cacheName);
		Cache ch=(Cache)cache.getValue();
		HashMap map = (HashMap)ch.getValue();
		return map.size();
	}
}
