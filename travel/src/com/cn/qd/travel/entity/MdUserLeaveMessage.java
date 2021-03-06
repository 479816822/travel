package com.cn.qd.travel.entity;

import java.util.ArrayList;
import java.util.Date;

public class MdUserLeaveMessage {

	private MdUser lvUser;//留言人
	
	private MdUser hostUser;//被留言人
	
	
	private ArrayList<MdUserLeaveMessage> lvMoreMessage;// 多级留言

	private String mdLvRecid;//主键

	private String mdLvMessage;//留言

	private Date mdLvTime;
	
	private String mdLvDate;

	private String mdLvUserRecid;//留言人

	private String mdLvNestUserRecid;

	private String mdHostUserRecid;//被留言人

	private Short mdLvLevel;

	private String mdLvRefId;//父级点

	
	
	public String getMdLvDate() {
		return mdLvDate;
	}

	public void setMdLvDate(String mdLvDate) {
		this.mdLvDate = mdLvDate;
	}

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




	public ArrayList<MdUserLeaveMessage> getLvMoreMessage() {
		return lvMoreMessage;
	}

	public void setLvMoreMessage(ArrayList<MdUserLeaveMessage> lvMoreMessage) {
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