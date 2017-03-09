package com.cn.qd.travel.entity;

import java.math.BigDecimal;
import java.util.Date;

public class MDViewComment {
    private String mdRecid;

    private String mdStdname;

    private String mdRefId;

    private BigDecimal mdStdcode;

    private Date mdCreateTime;

    private Date mdAlertDate;

    private String mdAlertUser;

    private Short mdLevel;

    private String mdViewRecid;

    private String mdContent;

    private String mdUserRecid;

    private String mdViewImg;

    private Date mdCommentTime;

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

    public String getMdViewRecid() {
        return mdViewRecid;
    }

    public void setMdViewRecid(String mdViewRecid) {
        this.mdViewRecid = mdViewRecid == null ? null : mdViewRecid.trim();
    }

    public String getMdContent() {
        return mdContent;
    }

    public void setMdContent(String mdContent) {
        this.mdContent = mdContent == null ? null : mdContent.trim();
    }

    public String getMdUserRecid() {
        return mdUserRecid;
    }

    public void setMdUserRecid(String mdUserRecid) {
        this.mdUserRecid = mdUserRecid == null ? null : mdUserRecid.trim();
    }

    public String getMdViewImg() {
        return mdViewImg;
    }

    public void setMdViewImg(String mdViewImg) {
        this.mdViewImg = mdViewImg == null ? null : mdViewImg.trim();
    }

    public Date getMdCommentTime() {
        return mdCommentTime;
    }

    public void setMdCommentTime(Date mdCommentTime) {
        this.mdCommentTime = mdCommentTime;
    }

    public Long getMdPraise() {
        return mdPraise;
    }

    public void setMdPraise(Long mdPraise) {
        this.mdPraise = mdPraise;
    }
}