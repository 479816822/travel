package com.cn.qd.travel.service;

import java.util.List;
import java.util.Map;

import com.cn.qd.travel.core.Service;

/**
 * �û�����ӿڣ��û��Ĵ������ʵ�ָýӿ�,�ýӿ�ͳһ�̳���Service�ӿڲ������ݿ� 1.�ṩ�û�����ɾ�Ĳ� 2.��ѯ�ṩ���з��ز�ѯ�����з��ز�ѯ
 * 3.����ʵ��ʵ��,��д����ķ��� 4.TClass���÷��� ע������ķ������������Ҫ,��������Ӳ���
 * 
 * @author liufu
 *
 */
public interface UserService<TClass> extends Service<TClass> {

	/**
	 * �û�ע��,ע��ɹ�����true ����false
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean insertRegister(TClass T, Map<String, Object> map);

	/**
	 * �û���½,��½�ɹ�����true ����false
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public boolean getLogin(TClass T, Map map);

	/**
	 * �û���Ϣ�޸�,sqlд��ͨ�� ����map��ֵ
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	public int updateUser(TClass t, Map<String, Object> map);

	/**
	 * �û�ɾ�� ����map��ֵ
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	public int deleteUser(TClass t, Map<String, Object> map);

	/**
	 * ��ȡ�û��Ľ�ɫ ����map��ֵ
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public List<Object> getUserRole(TClass t, Map map);

	/**
	 * ��ȡ�û���Ȩ�� ����map��ֵ
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	public List<Object> getUserAuthority(TClass t, Map<String, Object> map);
	
	/**
	 * �û��Ƿ���ĳ��ɫ
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	public boolean hasRole(TClass t, Map<String, Object> map);

	/**
	 * ��ȡ�û���Ȩ�� ����map��ֵ
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	public boolean hasAuthority(TClass t, Map<String, Object> map);
}
