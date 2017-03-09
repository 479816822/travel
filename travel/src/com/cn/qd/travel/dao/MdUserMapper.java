package com.cn.qd.travel.dao;

import java.util.List;
import java.util.Map;

import com.cn.qd.travel.entity.MdUser;

public interface MdUserMapper {
	
	/**
	 * ������ɾ��ɾ��
	 * @param mdUserRecid
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	int deleteByMore(Map map);
	
	/**
	 * ����ɾ��
	 * @param mdUserRecid
	 * @return
	 */
    int deleteByPrimaryKey(String mdUserRecid);
    
    /**
     * ���ݲ���
     * @param record
     * @return
     */
    int insert(MdUser record);

    /**
     * �����������Ĳ���
     * @param record
     * @return
     */
    int insertSelective(MdUser record);

    /**
     * ���ݲ�ѯ,�������ݲ�ѯ
     * @param mdUserRecid
     * @return
     */
    MdUser selectByPrimaryKey(MdUser record);
    
    
    /**
     * ���ݲ�ѯ,�������ݲ�ѯ
     * @param mdUserRecid
     * @return
     */
    MdUser selectByPrimaryKey(String mdUserRecid);
    
    /**
     * ���ݲ�ѯ,���������ݲ�ѯ
     * @param mdUserRecid
     * @return
     */
    List<MdUser> selectListBy(MdUser record);
    
    
    /**
     * ���ݲ�ѯ,���������ݲ�ѯ
     * @param mdUserRecid
     * @return
     */
    @SuppressWarnings("rawtypes")
	List<MdUser> selectListRecords(Map map);
    
    
    /**
     * ���ݸ���
     * @param mdUserRecid
     * @return
     */
    int updateByPrimaryKeySelective(MdUser record);

    /**
     * ���ݸ���
     * @param mdUserRecid
     * @return
     */
    int updateByPrimaryKeyWithBLOBs(MdUser record);
    /**
     * ���ݸ���
     * @param mdUserRecid
     * @return
     */
    int updateByPrimaryKey(MdUser record);
    
    /**
     * ���ݸ���
     * @param mdUserRecid
     * @return
     */
    @SuppressWarnings("rawtypes")
	int updateByMap(Map map);
    
}