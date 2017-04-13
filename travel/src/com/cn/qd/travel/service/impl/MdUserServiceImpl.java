package com.cn.qd.travel.service.impl;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.qd.travel.dao.MdUserMapper;
import com.cn.qd.travel.entity.MdUser;
import com.cn.qd.travel.service.UserService;

@Service
public class MdUserServiceImpl implements UserService{


	@Autowired
	MdUserMapper userDao;
	
	@Override
	public int insert(Object t, Map<String, Object> map) {
		return 0;
	}

	/**
	 * 修改用户的登陆状态
	 */
	@Override
	public int update(Object t, Map<String, Object> map) {
		return userDao.updateByPrimaryKeySelective((MdUser)t);
	}

	@Override
	public int delete(Object t, Map<String, Object> map) {
		return 0;
	}

	@Override
	public ArrayList<Object> oneResultProvider(Object t, Map<String, Object> map) {
		return null;
	}

	/**
	 * 查找用户 密码和电话号码
	 */
	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<Object> oneListResultProvider(Object t,
			Map<String, Object> map) {
		Object list=userDao.selectListBy((MdUser)t);
		return (ArrayList<Object>)list;
	}

	@Override
	public boolean insertRegister(MdUser T, Map<String, Object> map) {
		return false;
	}

	@Override
	public boolean getLogin(MdUser T, @SuppressWarnings("rawtypes") Map map) {
		return false;
	}

	@Override
	public int updateUser(MdUser t, Map<String, Object> map) {
		return 0;
	}

	@Override
	public int deleteUser(MdUser t, Map<String, Object> map) {
		return 0;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public ArrayList<Object> getUserRole(MdUser t, Map map) {
		return null;
	}

	@Override
	public ArrayList<Object> getUserAuthority(MdUser t, Map<String, Object> map) {
		return null;
	}

	@Override
	public boolean hasRole(MdUser t, Map<String, Object> map) {
		return false;
	}

	@Override
	public boolean hasAuthority(MdUser t, Map<String, Object> map) {
		return false;
	}
	//手机号码验证
	@Override
	public int checkPhone(String mdTelephone) {
		return userDao.checkPhone(mdTelephone);
	}
	
	//按条件插入
	@Override
	public int insertSelective(MdUser user) {
		return userDao.insertSelective(user);
	}

	/**
	 * 修改密码
	 */
	@Override
	public int updateUserPass(MdUser t, Map<String, Object> map) {
		return userDao.updateByPrimaryKey(t);
	}

	/**
	 * sql执行
	 */
	@Override
	public int updateBySql(Map<String, Object> map) {
		return userDao.updateBySql((String)map.get("sql"));
	}

	@Override
	public int updateUserInfo(MdUser user) {
		return userDao.updateByMap(user);
	}

	@Override
	public ArrayList<MdUser> selectById(String id) {
		return userDao.selectByUserId(id);
	}

	/**
	 * 系统管理员登陆
	 */
	@Override
	public MdUser backLogin(MdUser user) {
		return userDao.backLogin(user);
	}

}
