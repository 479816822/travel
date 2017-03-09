package com.cn.qd.travel.entity;

import java.math.BigDecimal;
import java.util.Date;

public class MDUserIcon {
    private String mdIconId;

    private String mdStdname;

    private String mdRefId;

    private BigDecimal mdStdcode;

    private Date mdCreateTime;

    private Date mdAlertDate;

    private String mdAlertUser;

    private Short mdLevel;

    private String mdUserId;

    private String mdIcon;

    public String getMdIconId() {
        return mdIconId;
    }

    public void setMdIconId(String mdIconId) {
        this.mdIconId = mdIconId == null ? null : mdIconId.trim();
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

    public String getMdUserId() {
        return mdUserId;
    }

    public void setMdUserId(String mdUserId) {
        this.mdUserId = mdUserId == null ? null : mdUserId.trim();
    }

    public String getMdIcon() {
        return mdIcon;
    }

    public void setMdIcon(String mdIcon) {
        this.mdIcon = mdIcon == null ? null : mdIcon.trim();
    }
}