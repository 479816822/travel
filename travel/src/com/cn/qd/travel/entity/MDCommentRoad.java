package com.cn.qd.travel.entity;

import java.math.BigDecimal;
import java.util.Date;

public class MDCommentRoad {
    private String mdRecid;

    private String mdStdname;

    private String mdRefId;

    private BigDecimal mdStdcode;

    private Date mdCreateTime;

    private Date mdAlertDate;

    private String mdAlertUser;

    private Long mdPrasic;

    private Short mdLevel;

    private String mdRoadRecid;

    private String mdContent;

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

    public Long getMdPrasic() {
        return mdPrasic;
    }

    public void setMdPrasic(Long mdPrasic) {
        this.mdPrasic = mdPrasic;
    }

    public Short getMdLevel() {
        return mdLevel;
    }

    public void setMdLevel(Short mdLevel) {
        this.mdLevel = mdLevel;
    }

    public String getMdRoadRecid() {
        return mdRoadRecid;
    }

    public void setMdRoadRecid(String mdRoadRecid) {
        this.mdRoadRecid = mdRoadRecid == null ? null : mdRoadRecid.trim();
    }

    public String getMdContent() {
        return mdContent;
    }

    public void setMdContent(String mdContent) {
        this.mdContent = mdContent == null ? null : mdContent.trim();
    }
}