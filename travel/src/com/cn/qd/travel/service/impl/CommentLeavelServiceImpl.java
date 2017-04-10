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
import com.cn.qd.travel.entity.MdUserLeaveMessage;
import com.cn.qd.travel.entity.Page;
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
	public ArrayList<MdUserLeaveMessage> selectById(Object t, HttpServletRequest request) {
		MdUserLeaveMessage lv = (MdUserLeaveMessage) t;
		return finishLvMessage(leaveMessage.selectListById(lv.getMdHostUserRecid()), request);
	}

	/**
	 * 游记评论插入
	 * 
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
	public ArrayList<MDCommentOne> selectTravelComment(String id, HttpServletRequest request) {
		ArrayList<MDCommentOne> commList = commentTravel.selectByPrimaryKey(id);
		return choose(commList, request);
	}

	/**
	 * 递归处理游记的评论
	 * 
	 * @param commentList
	 * @return
	 */
	private ArrayList<MDCommentOne> choose(ArrayList<MDCommentOne> commentList, HttpServletRequest request) {

		if (commentList.size() == 0) {
			return commentList;
		} else {
			for (int i = 0; i < commentList.size(); i++) {
				ArrayList<MDCommentOne> commList = commentTravel.selectListBy(commentList.get(i).getMdRecid());
				commentList.get(i).setCommentChildren(choose(commList, request));
				SimpleDateFormat sim = new SimpleDateFormat("YYYY-MM-dd");
				String date = sim.format(commentList.get(i).getMdCommentTime());
				commentList.get(i).setCommentDate(date);
				String savePath = request.getSession().getServletContext().getRealPath("upload");
				String userHeadImg = ChangeIcon.changeImg(commentList.get(i).getUser().getMdIcon(), savePath);
				commentList.get(i).getUser().setUserHeadImg(userHeadImg);
			}
		}
		return commentList;
	}

	/**
	 * 用户评论头像和日期处理
	 * 
	 * @param LvMessage
	 * @param request
	 * @return
	 */
	private ArrayList<MdUserLeaveMessage> finishLvMessage(ArrayList<MdUserLeaveMessage> LvMessage,
			HttpServletRequest request) {

		if (LvMessage == null) {
			return null;
		} else {
			for (int i = 0; i < LvMessage.size(); i++) {
				if (LvMessage.get(i).getLvUser() != null) {
					String savePath = request.getSession().getServletContext().getRealPath("upload");
					String userHeadImg = ChangeIcon.changeImg(LvMessage.get(i).getLvUser().getMdIcon(), savePath);
					LvMessage.get(i).getLvUser().setUserHeadImg(userHeadImg);
				}
				if (LvMessage.get(i).getMdLvTime() != null) {
					SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					String date = sim.format(LvMessage.get(i).getMdLvTime());
					LvMessage.get(i).setMdLvDate(date);
				}
				if (LvMessage.get(0).getLvMoreMessage() != null) {
					LvMessage.get(0).getLvMoreMessage()
							.addAll(finishLvMessage(LvMessage.get(0).getLvMoreMessage(), request));
				}
			}

		}

		return LvMessage;
	}

	/**
	 * 用户留言分页数据查询
	 */
	@Override
	public ArrayList<MdUserLeaveMessage> selectLvMeaagePage(Page page, HttpServletRequest request) {
		ArrayList<MdUserLeaveMessage> messageList = finishLvMessage(leaveMessage.selectListById(page.getCache()),
				request);

		int begin = 0;
		if (page.getNextPage() == -1) {// 上一页
			begin = (page.getPageCurrent() - 1) * page.getPageSize()-page.getPageSize();
		} else if (page.getPrePage() == -1) {// 下一页
			begin = (page.getPageCurrent() - 1) * page.getPageSize() + page.getDataCount();
		}
		int end = 0;
		if ((begin + page.getPageSize()) > messageList.size()) {
			end = messageList.size();
		} else {
			end = begin + page.getPageSize();
		}

		return getPage(messageList, begin, end);
	}

	private ArrayList<MdUserLeaveMessage> getPage(ArrayList<MdUserLeaveMessage> messageList, int begin, int end) {
		ArrayList<MdUserLeaveMessage> pageMessageList = new ArrayList<MdUserLeaveMessage>();

		for (int i = begin; i <end; i++) {
			pageMessageList.add(messageList.get(i));
		}

		return pageMessageList;
	}

}
