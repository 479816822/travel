package com.cn.qd.travel.entity;

import java.math.BigDecimal;
import java.util.Date;

public class MDOperation {
    private String mdOperationRecid;

    private String mdRefId;

    private Date mdCreateTime;

    private Date mdAlertDate;

    private String mdAlertUser;

    private Short mdLevel;

    private String mdStaname;

    private BigDecimal mdStdcode;

    public String getMdOperationRecid() {
        return mdOperationRecid;
    }

    public void setMdOperationRecid(String mdOperationRecid) {
        this.mdOperationRecid = mdOperationRecid == null ? null : mdOperationRecid.trim();
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

    public Short getMdLevel() {
        return mdLevel;
    }

    public void setMdLevel(Short mdLevel) {
        this.mdLevel = mdLevel;
    }

    public String getMdStaname() {
        return mdStaname;
    }

    public void setMdStaname(String mdStaname) {
        this.mdStaname = mdStaname == null ? null : mdStaname.trim();
    }

    public BigDecimal getMdStdcode() {
        return mdStdcode;
    }

    public void setMdStdcode(BigDecimal mdStdcode) {
        this.mdStdcode = mdStdcode;
    }
}