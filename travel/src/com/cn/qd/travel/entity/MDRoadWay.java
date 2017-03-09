package com.cn.qd.travel.entity;

import java.math.BigDecimal;
import java.util.Date;

public class MDRoadWay {
    private String mdRecid;

    private String mdStdname;

    private String mdRefId;

    private BigDecimal mdStdcode;

    private Date mdCreateTime;

    private Date mdAlertDate;

    private String mdAlertUser;

    private Short mdLevel;

    private String mdRoad;

    private String mdMap;

    private String mdHowPlay;

    private String mdHowTraffic;

    private String mdHowTicket;

    private String mdHowEat;

    private String mdHowHouse;

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

    public String getMdRoad() {
        return mdRoad;
    }

    public void setMdRoad(String mdRoad) {
        this.mdRoad = mdRoad == null ? null : mdRoad.trim();
    }

    public String getMdMap() {
        return mdMap;
    }

    public void setMdMap(String mdMap) {
        this.mdMap = mdMap == null ? null : mdMap.trim();
    }

    public String getMdHowPlay() {
        return mdHowPlay;
    }

    public void setMdHowPlay(String mdHowPlay) {
        this.mdHowPlay = mdHowPlay == null ? null : mdHowPlay.trim();
    }

    public String getMdHowTraffic() {
        return mdHowTraffic;
    }

    public void setMdHowTraffic(String mdHowTraffic) {
        this.mdHowTraffic = mdHowTraffic == null ? null : mdHowTraffic.trim();
    }

    public String getMdHowTicket() {
        return mdHowTicket;
    }

    public void setMdHowTicket(String mdHowTicket) {
        this.mdHowTicket = mdHowTicket == null ? null : mdHowTicket.trim();
    }

    public String getMdHowEat() {
        return mdHowEat;
    }

    public void setMdHowEat(String mdHowEat) {
        this.mdHowEat = mdHowEat == null ? null : mdHowEat.trim();
    }

    public String getMdHowHouse() {
        return mdHowHouse;
    }

    public void setMdHowHouse(String mdHowHouse) {
        this.mdHowHouse = mdHowHouse == null ? null : mdHowHouse.trim();
    }
}