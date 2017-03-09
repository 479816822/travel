package com.cn.qd.travel.entity;

import java.math.BigDecimal;
import java.util.Date;

public class MDRole {
    private String mdRoleId;

    private String mdStdname;

    private String mdRefId;

    private BigDecimal mdStdcode;

    private Date mdAlertDate;

    private String mdAlertUser;

    private Date mdCreateTime;

    private String mdCreateUser;

    private String mdName;

    private String mdGroupName;

    private Short mdLevel;

    public String getMdRoleId() {
        return mdRoleId;
    }

    public void setMdRoleId(String mdRoleId) {
        this.mdRoleId = mdRoleId == null ? null : mdRoleId.trim();
    }

    public String getMdStdname() {
        return mdStdname;
    }

    public void setMdStdname(String mdStdname) {
        this.mdStdname = mdStdname == null ? null : mdStdname.trim();
    }

    public String getMdRefId() {
        return mdRefId;
    }

    public void setMdRefId(String mdRefId) {
        this.mdRefId = mdRefId == null ? null : mdRefId.trim();
    }

    public BigDecimal getMdStdcode() {
        return mdStdcode;
    }

    public void setMdStdcode(BigDecimal mdStdcode) {
        this.mdStdcode = mdStdcode;
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

    public Date getMdCreateTime() {
        return mdCreateTime;
    }

    public void setMdCreateTime(Date mdCreateTime) {
        this.mdCreateTime = mdCreateTime;
    }

    public String getMdCreateUser() {
        return mdCreateUser;
    }

    public void setMdCreateUser(String mdCreateUser) {
        this.mdCreateUser = mdCreateUser == null ? null : mdCreateUser.trim();
    }

    public String getMdName() {
        return mdName;
    }

    public void setMdName(String mdName) {
        this.mdName = mdName == null ? null : mdName.trim();
    }

    public String getMdGroupName() {
        return mdGroupName;
    }

    public void setMdGroupName(String mdGroupName) {
        this.mdGroupName = mdGroupName == null ? null : mdGroupName.trim();
    }

    public Short getMdLevel() {
        return mdLevel;
    }

    public void setMdLevel(Short mdLevel) {
        this.mdLevel = mdLevel;
    }
}