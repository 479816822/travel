package com.cn.qd.travel.entity;

import java.util.Date;

public class MdUserLeaveMoreMessage {
	
	private MdUser lvUser;//留言人
	
	private MdUser hostUser;//被留言人
	
    private String mdLvMRecid;

    private String mdLvMMessage;

    private Date mdLvMTime;

    private String mdLvMUserRecid;

    private String mdHostMUserRecid;

    private String mdLvRefMId;

    public String getMdLvMRecid() {
        return mdLvMRecid;
    }

    public void setMdLvMRecid(String mdLvMRecid) {
        this.mdLvMRecid = mdLvMRecid == null ? null : mdLvMRecid.trim();
    }

    public String getMdLvMMessage() {
        return mdLvMMessage;
    }

    public void setMdLvMMessage(String mdLvMMessage) {
        this.mdLvMMessage = mdLvMMessage == null ? null : mdLvMMessage.trim();
    }

    public Date getMdLvMTime() {
        return mdLvMTime;
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

	public void setMdLvMTime(Date mdLvMTime) {
        this.mdLvMTime = mdLvMTime;
    }

    public String getMdLvMUserRecid() {
        return mdLvMUserRecid;
    }

    public void setMdLvMUserRecid(String mdLvMUserRecid) {
        this.mdLvMUserRecid = mdLvMUserRecid == null ? null : mdLvMUserRecid.trim();
    }

    public String getMdHostMUserRecid() {
        return mdHostMUserRecid;
    }

    public void setMdHostMUserRecid(String mdHostMUserRecid) {
        this.mdHostMUserRecid = mdHostMUserRecid == null ? null : mdHostMUserRecid.trim();
    }

    public String getMdLvRefMId() {
        return mdLvRefMId;
    }

    public void setMdLvRefMId(String mdLvRefMId) {
        this.mdLvRefMId = mdLvRefMId == null ? null : mdLvRefMId.trim();
    }
}