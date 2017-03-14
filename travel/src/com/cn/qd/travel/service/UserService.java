package com.cn.qd.travel.service;

import java.util.ArrayList;
import java.util.Map;

import com.cn.qd.travel.core.BaseService;
import com.cn.qd.travel.entity.MdUser;

/**
 * 用户服务接口，用户的处理必须实现该接口,该接口统一继承了Service接口操作数据库 1.提供用户的增删改查 2.查询提供单行返回查询、多行返回查询
 * 3.具体实现实现,重写具体的方法 4.TClass采用泛型 注：具体的服务有其余的需要,再自行添加补充
 * 
 * @author liufu
 *
 */
public interface UserService extends BaseService {

	/**
	 * 用户注册,注册成功返回true 否则false
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	public boolean insertRegister(MdUser T, Map<String, Object> map);

	/**
	 * 用户登陆,登陆成功返回true 否则false
	 * 
	 * @param T
	 * @param map
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public boolean getLogin(MdUser T, Map map);

	/**
	 * 用户信息修改,sql写成通用 采用map传值
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	public int updateUser(MdUser t, Map<String, Object> map);

	/**
	 * 用户删除 采用map传值
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	public int deleteUser(MdUser t, Map<String, Object> map);

	/**
	 * 获取用户的角色 采用map传值
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public ArrayList<Object> getUserRole(MdUser t, Map map);

	/**
	 * 获取用户的权限 采用map传值
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	public ArrayList<Object> getUserAuthority(MdUser t, Map<String, Object> map);
	
	/**
	 * 用户是否有某角色
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	public boolean hasRole(MdUser t, Map<String, Object> map);

	/**
	 * 获取用户的权限 采用map传值
	 * 
	 * @param t
	 * @param map
	 * @return
	 */
	public boolean hasAuthority(MdUser t, Map<String, Object> map);
}
