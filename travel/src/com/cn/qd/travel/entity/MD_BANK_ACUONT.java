package com.cn.qd.travel.entity;

import java.math.BigDecimal;
import java.util.Date;

public class MD_BANK_ACUONT {
    private String mdRecid;

    private String mdStdname;

    private String mdRefId;

    private BigDecimal mdStdcode;

    private Date mdCreateTime;

    private Date mdAlertDate;

    private String mdAlertUser;

    private Short mdLevel;

    private String mdAccount;

    private Long mdBalance;

    private String mdUserId;

    private String mdBackId;

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

    public String getMdAccount() {
        return mdAccount;
    }

    public void setMdAccount(String mdAccount) {
        this.mdAccount = mdAccount == null ? null : mdAccount.trim();
    }

    public Long getMdBalance() {
        return mdBalance;
    }

    public void setMdBalance(Long mdBalance) {
        this.mdBalance = mdBalance;
    }

    public String getMdUserId() {
        return mdUserId;
    }

    public void setMdUserId(String mdUserId) {
        this.mdUserId = mdUserId == null ? null : mdUserId.trim();
    }

    public String getMdBackId() {
        return mdBackId;
    }

    public void setMdBackId(String mdBackId) {
        this.mdBackId = mdBackId == null ? null : mdBackId.trim();
    }
}