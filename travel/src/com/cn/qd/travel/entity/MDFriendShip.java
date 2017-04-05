package com.cn.qd.travel.entity;

import java.math.BigDecimal;
import java.util.Date;

public class MDFriendShip {
    private String mdRecid;

    private String mdStdname;

    private String mdRefId;

    private BigDecimal mdStdcode;

    private Date mdAlertDate;

    private String mdAlertUser;

    private Short mdLevel;

    private String mdHostUserId;//自己id

    private String mdFriendId;//朋友id

    private Date mdCreateTime;

    private String mdGroupName;

    private String mdRemark;

    private String mdFriendName;

    private Long mdPraise;

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

    public String getMdHostUserId() {
        return mdHostUserId;
    }

    public void setMdHostUserId(String mdHostUserId) {
        this.mdHostUserId = mdHostUserId == null ? null : mdHostUserId.trim();
    }

    public String getMdFriendId() {
        return mdFriendId;
    }

    public void setMdFriendId(String mdFriendId) {
        this.mdFriendId = mdFriendId == null ? null : mdFriendId.trim();
    }

    public Date getMdCreateTime() {
        return mdCreateTime;
    }

    public void setMdCreateTime(Date mdCreateTime) {
        this.mdCreateTime = mdCreateTime;
    }

    public String getMdGroupName() {
        return mdGroupName;
    }

    public void setMdGroupName(String mdGroupName) {
        this.mdGroupName = mdGroupName == null ? null : mdGroupName.trim();
    }

    public String getMdRemark() {
        return mdRemark;
    }

    public void setMdRemark(String mdRemark) {
        this.mdRemark = mdRemark == null ? null : mdRemark.trim();
    }

    public String getMdFriendName() {
        return mdFriendName;
    }

    public void setMdFriendName(String mdFriendName) {
        this.mdFriendName = mdFriendName == null ? null : mdFriendName.trim();
    }

    public Long getMdPraise() {
        return mdPraise;
    }

    public void setMdPraise(Long mdPraise) {
        this.mdPraise = mdPraise;
    }
}