package com.cn.qd.travel.core;

import java.util.ArrayList;
import java.util.Map;

/**
 * ���з���ӿ�,ͳһʵ�ֶ����ݿ���в���
 * @author liufu
 *
 */
public interface Service{

	
	/**
	 * ͨ���������,�ֶν�����������
	 * ������ֶβ���map��ֵ
	 * @param t
	 * @param map
	 * @return
	 */
	public int insert(Object t,Map<String, Object> map);
	
	/**
	 * ͨ���������,���������޸�
	 * ����map��ֵ
	 * @param t
	 * @param map
	 * @return
	 */
	public int update(Object t,Map<String, Object> map);
	
	/**
	 * ͨ���������,��������ɾ��
	 * ����map��ֵ
	 * @param t
	 * @param map
	 * @return
	 */
	public int delete(Object t,Map<String, Object> map);
	
	
	/**
	 * ͨ���������,��ѯ���е�����
	 * ����map��ֵ
	 * @param t
	 * @param map
	 * @return
	 */
	public ArrayList<Object> oneResultProvider(Object t,Map<String, Object> map);
	
	/**
	 * ͨ���������,��ѯ���е�����
	 * ����map��ֵ
	 * @param t
	 * @param map
	 * @return
	 */
	public ArrayList<Object> oneListResultProvider(Object t,Map<String, Object> map);
	
}
