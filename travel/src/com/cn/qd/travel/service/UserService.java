package com.cn.qd.travel.service;

import java.util.ArrayList;
import java.util.Map;

import com.cn.qd.travel.core.Service;
import com.cn.qd.travel.entity.MdUser;

/**
 * �û�����ӿڣ��û��Ĵ������ʵ�ָýӿ�,�ýӿ�ͳһ�̳���Service�ӿڲ������ݿ� 1.�ṩ�û�����ɾ�Ĳ� 2.��ѯ�ṩ���з��ز�ѯ�����з��ز�ѯ
 * 3.����ʵ��ʵ��,��д����ķ��� 4.TClass���÷��� ע������ķ������������Ҫ,��������Ӳ���
 * 
 * @author liufu
 *
 */
public interface UserService extends Service {

	/**
	 * �û�ע��,ע��ɹ�����true ����false
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean insertRegister(MdUser T, Map<String, Object> map);

	/**
	 * �û���½,��½�ɹ�����true ����false
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public boolean getLogin(MdUser T, Map map);

	/**
	 * �û���Ϣ�޸�,sqlд��ͨ�� ����map��ֵ
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	public int updateUser(MdUser t, Map<String, Object> map);

	/**
	 * �û�ɾ�� ����map��ֵ
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	public int deleteUser(MdUser t, Map<String, Object> map);

	/**
	 * ��ȡ�û��Ľ�ɫ ����map��ֵ
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public ArrayList<Object> getUserRole(MdUser t, Map map);

	/**
	 * ��ȡ�û���Ȩ�� ����map��ֵ
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	public ArrayList<Object> getUserAuthority(MdUser t, Map<String, Object> map);
	
	/**
	 * �û��Ƿ���ĳ��ɫ
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	public boolean hasRole(MdUser t, Map<String, Object> map);

	/**
	 * ��ȡ�û���Ȩ�� ����map��ֵ
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	public boolean hasAuthority(MdUser t, Map<String, Object> map);
}
