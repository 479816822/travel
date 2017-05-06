package com.cn.qd.travel.entity;

import java.math.BigDecimal;
import java.util.Date;

public class MDArea {
	
	private String parentName;
	
    private String mdAreaId;//主键

    private String mdRefId;//父节点

    private Date mdCreateTime;//创建时间

    private Date mdAlertDate;

    private String mdAlertUser;

    private String mdStdname;//地址名

    private BigDecimal mdStdcode;//地址等级13345
    
    private String areaLv;

    private Short mdLevel;//等级州国省市县镇村0123456

    public String getMdAreaId() {
        return mdAreaId;
    }

    
    public String getAreaLv() {
		return areaLv;
	}


	public void setAreaLv(String areaLv) {
		this.areaLv = areaLv;
	}


	public void setMdAreaId(String mdAreaId) {
        this.mdAreaId = mdAreaId == null ? null : mdAreaId.trim();
    }

    public String getMdRefId() {
        return mdRefId;
    }

    public void setMdRefId(String mdRefId) {
        this.mdRefId = mdRefId == null ? null : mdRefId.trim();
    }

    public Date getMdCreateTime() {
        return mdCreateTime;
    }

    public void setMdCreateTime(Date mdCreateTime) {
        this.mdCreateTime = mdCreateTime;
    }

    public Date getMdAlertDate() {
        return mdAlertDate;
    }

    public void setMdAlertDate(Date mdAlertDate) {
        this.mdAlertDate = mdAlertDate;
    }

    public String getMdAlertUser() {
        return mdAlertUser;
    }

    public void setMdAlertUser(String mdAlertUser) {
        this.mdAlertUser = mdAlertUser == null ? null : mdAlertUser.trim();
    }

    
    
    public String getParentName() {
		return parentName;
	}


	public void setParentName(String parentName) {
		this.parentName = parentName;
	}


	public String getMdStdname() {
        return mdStdname;
    }

    public void setMdStdname(String mdStdname) {
        this.mdStdname = mdStdname == null ? null : mdStdname.trim();
    }

    public BigDecimal getMdStdcode() {
        return mdStdcode;
    }

    public void setMdStdcode(BigDecimal mdStdcode) {
        this.mdStdcode = mdStdcode;
    }

    public Short getMdLevel() {
        return mdLevel;
    }

    public void setMdLevel(Short mdLevel) {
        this.mdLevel = mdLevel;
    }
}