package com.cn.qd.travel.core;

import java.util.List;
import java.util.Map;

/**
 * ���з���ӿ�,ͳһʵ�ֶ����ݿ���в���
 * 1.TClass �Ƕ�Ӧ����
 * @author liufu
 *
 */
public interface Service<TClass> {

	
	/**
	 * ͨ���������,�ֶν�����������
	 * ������ֶβ���map��ֵ
	 * @param t
	 * @param map
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public int insert(TClass t,Map map);
	
	/**
	 * ͨ���������,���������޸�
	 * ����map��ֵ
	 * @param t
	 * @param map
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public int update(TClass t,Map map);
	
	/**
	 * ͨ���������,��������ɾ��
	 * ����map��ֵ
	 * @param t
	 * @param map
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public int delete(TClass t,Map map);
	
	
	/**
	 * ͨ���������,��ѯ���е�����
	 * ����map��ֵ
	 * @param t
	 * @param map
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public List<TClass> oneResultProvider(TClass t,Map map);
	
	/**
	 * ͨ���������,��ѯ���е�����
	 * ����map��ֵ
	 * @param t
	 * @param map
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public List<TClass> oneListResultProvider(TClass t,Map map);
	
}
