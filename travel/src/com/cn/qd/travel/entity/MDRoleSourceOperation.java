package com.cn.qd.travel.entity;

import java.math.BigDecimal;
import java.util.Date;

public class MDRoleSourceOperation {
    private String mdRecid;

    private String mdStdname;

    private String mdRefId;

    private BigDecimal mdStdcode;

    private Date mdCreateTime;

    private Date mdAlertDate;

    private String mdAlertUser;

    private Short mdLevel;

    private String mdRefOpRecid;

    private String mdRefRoleRecid;

    private String mdRefSourceId;

    public String getMdRecid() {
        return mdRecid;
    }

    public void setMdRecid(String mdRecid) {
        this.mdRecid = mdRecid == null ? null : mdRecid.trim();
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

    public Short getMdLevel() {
        return mdLevel;
    }

    public void setMdLevel(Short mdLevel) {
        this.mdLevel = mdLevel;
    }

    public String getMdRefOpRecid() {
        return mdRefOpRecid;
    }

    public void setMdRefOpRecid(String mdRefOpRecid) {
        this.mdRefOpRecid = mdRefOpRecid == null ? null : mdRefOpRecid.trim();
    }

    public String getMdRefRoleRecid() {
        return mdRefRoleRecid;
    }

    public void setMdRefRoleRecid(String mdRefRoleRecid) {
        this.mdRefRoleRecid = mdRefRoleRecid == null ? null : mdRefRoleRecid.trim();
    }

    public String getMdRefSourceId() {
        return mdRefSourceId;
    }

    public void setMdRefSourceId(String mdRefSourceId) {
        this.mdRefSourceId = mdRefSourceId == null ? null : mdRefSourceId.trim();
    }
}