package com.cn.qd.travel.entity;

import java.util.Date;
import java.util.List;

public class MdUserLeaveMessage {

	private MdUser lvUser;//留言人
	
	private MdUser hostUser;//被留言人
	
	
	private List<MdUserLeaveMessage> lvMoreMessage;// 多级留言

	private String mdLvRecid;//主键

	private String mdLvMessage;//留言

	private Date mdLvTime;

	private String mdLvUserRecid;//留言人

	private String mdLvNestUserRecid;//父级点

	private String mdHostUserRecid;//被留言人

	private Short mdLvLevel;

	private String mdLvRefId;

	
	
	public MdUser getLvUser() {
		return lvUser;
	}

	public void setLvUser(MdUser lvUser) {
		this.lvUser = lvUser;
	}



	public MdUser getHostUser() {
		return hostUser;
	}

	public void setHostUser(MdUser hostUser) {
		this.hostUser = hostUser;
	}



	public List<MdUserLeaveMessage> getLvMoreMessage() {
		return lvMoreMessage;
	}

	public void setLvMoreMessage(List<MdUserLeaveMessage> lvMoreMessage) {
		this.lvMoreMessage = lvMoreMessage;
	}

	public String getMdLvRecid() {
		return mdLvRecid;
	}

	public void setMdLvRecid(String mdLvRecid) {
		this.mdLvRecid = mdLvRecid == null ? null : mdLvRecid.trim();
	}

	public String getMdLvMessage() {
		return mdLvMessage;
	}

	public void setMdLvMessage(String mdLvMessage) {
		this.mdLvMessage = mdLvMessage == null ? null : mdLvMessage.trim();
	}

	public Date getMdLvTime() {
		return mdLvTime;
	}

	public void setMdLvTime(Date mdLvTime) {
		this.mdLvTime = mdLvTime;
	}

	public String getMdLvUserRecid() {
		return mdLvUserRecid;
	}

	public void setMdLvUserRecid(String mdLvUserRecid) {
		this.mdLvUserRecid = mdLvUserRecid == null ? null : mdLvUserRecid.trim();
	}

	public String getMdLvNestUserRecid() {
		return mdLvNestUserRecid;
	}

	public void setMdLvNestUserRecid(String mdLvNestUserRecid) {
		this.mdLvNestUserRecid = mdLvNestUserRecid == null ? null : mdLvNestUserRecid.trim();
	}

	public String getMdHostUserRecid() {
		return mdHostUserRecid;
	}

	public void setMdHostUserRecid(String mdHostUserRecid) {
		this.mdHostUserRecid = mdHostUserRecid == null ? null : mdHostUserRecid.trim();
	}

	public Short getMdLvLevel() {
		return mdLvLevel;
	}

	public void setMdLvLevel(Short mdLvLevel) {
		this.mdLvLevel = mdLvLevel;
	}

	public String getMdLvRefId() {
		return mdLvRefId;
	}

	public void setMdLvRefId(String mdLvRefId) {
		this.mdLvRefId = mdLvRefId == null ? null : mdLvRefId.trim();
	}
}