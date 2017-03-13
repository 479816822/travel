package com.cn.qd.travel.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.cn.qd.travel.core.Cache;
import com.cn.qd.travel.core.CacheManager;

/**
 * ����ʵ�ֻ������� 1.�������� 2.��ȡ����
 * 
 * @author liufu
 *
 */
public class CacheFinish {

	/**
	 * ��������
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
	 * ��ȡָ�����������
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
	 * ��ȡָ�������ָ������
	 * 
	 * @return
	 */
	public static boolean getDataByString(String cacheName, ArrayList<String> list) {

		return true;
	}

	/**
	 * ��ȡָ�������ָ������
	 * 
	 * @return
	 */
	public static boolean getDataByLong(String cacheName, ArrayList<String> list) {

		return true;
	}
}
