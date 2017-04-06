package com.cn.qd.travel.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.qd.travel.dao.MDCommentOneMapper;
import com.cn.qd.travel.dao.MdUserLeaveMessageMapper;
import com.cn.qd.travel.entity.MDCommentOne;
import com.cn.qd.travel.entity.MdUser;
import com.cn.qd.travel.entity.MdUserLeaveMessage;
import com.cn.qd.travel.service.CommentLeavelService;
import com.cn.qd.travel.util.ChangeIcon;

@Service
public class CommentLeavelServiceImpl implements CommentLeavelService {

	@Autowired
	MdUserLeaveMessageMapper leaveMessage;
	@Autowired
	MDCommentOneMapper commentTravel;

	/**
	 * 插入留言数据
	 */
	@Override
	public int insert(Object t, Map<String, Object> map) {
		return leaveMessage.insertSelective((MdUserLeaveMessage) t);
	}

	@Override
	public int update(Object t, Map<String, Object> map) {
		return 0;
	}

	@Override
	public int delete(Object t, Map<String, Object> map) {
		return 0;
	}

	@Override
	public ArrayList<Object> oneResultProvider(Object t, Map<String, Object> map) {
		return null;
	}

	@Override
	public ArrayList<Object> oneListResultProvider(Object t, Map<String, Object> map) {
		return null;
	}

	@Override
	public ArrayList<Object> selectBySql(Object t) {
		return null;
	}

	/**
	 * 查询指定用户的所有的留言数据
	 */
	@Override
	public ArrayList<MdUserLeaveMessage> selectById(Object t) {
		MdUserLeaveMessage lv = (MdUserLeaveMessage) t;
		return leaveMessage.selectListById(lv.getMdHostUserRecid());
	}

	
	/**
	 * 游记评论插入
	 * @param comment
	 * @return
	 */
	@Override
	public int insertTravelComment(MDCommentOne comment) {
		return commentTravel.insertSelective(comment);
	}

	
	/**
	 * 查询游记的所有的评论
	 */
	@Override
	public ArrayList<MDCommentOne> selectTravelComment(String id,HttpServletRequest request) {
		ArrayList<MDCommentOne> commList=commentTravel.selectByPrimaryKey(id);
		return choose(commList,request);
	}
	
	/**
	 * 递归处理游记的评论
	 * @param commentList
	 * @return
	 */
	private ArrayList<MDCommentOne> choose(ArrayList<MDCommentOne> commentList,HttpServletRequest request){
		
		if(commentList.size()==0){
			return commentList;
		}else{
			for (int i = 0; i < commentList.size(); i++) {
				ArrayList<MDCommentOne> commList=commentTravel.selectListBy(commentList.get(i).getMdRecid());
				commentList.get(i).setCommentChildren(choose(commList,request));
				SimpleDateFormat sim=new SimpleDateFormat("YYYY-MM-dd");
				String date=sim.format(commentList.get(i).getMdCommentTime());
				commentList.get(i).setCommentDate(date);
				String savePath = request.getSession().getServletContext().getRealPath("upload");
				String userHeadImg = ChangeIcon.changeImg(commentList.get(i).getUser().getMdIcon(), savePath);
				commentList.get(i).getUser().setUserHeadImg(userHeadImg);
			}
		}
		
		
		return commentList;
	}
	
	
	

}
