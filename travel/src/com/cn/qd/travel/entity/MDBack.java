package com.cn.qd.travel.entity;

import java.math.BigDecimal;
import java.util.Date;

public class MDBack {
    private String mdRecid;

    private String mdStdname;

    private String mdRefId;

    private BigDecimal mdStdcode;

    private Date mdCreateTime;

    private Date mdAlertDate;

    private String mdAlertUser;

    private Short mdLevel;

    private String mdBackName;

    private String mdCountryId;

    private String mdProvinceId;

    private String mdCityId;

    private String mdTownId;

    private String mdAddress;

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

    public String getMdBackName() {
        return mdBackName;
    }

    public void setMdBackName(String mdBackName) {
        this.mdBackName = mdBackName == null ? null : mdBackName.trim();
    }

    public String getMdCountryId() {
        return mdCountryId;
    }

    public void setMdCountryId(String mdCountryId) {
        this.mdCountryId = mdCountryId == null ? null : mdCountryId.trim();
    }

    public String getMdProvinceId() {
        return mdProvinceId;
    }

    public void setMdProvinceId(String mdProvinceId) {
        this.mdProvinceId = mdProvinceId == null ? null : mdProvinceId.trim();
    }

    public String getMdCityId() {
        return mdCityId;
    }

    public void setMdCityId(String mdCityId) {
        this.mdCityId = mdCityId == null ? null : mdCityId.trim();
    }

    public String getMdTownId() {
        return mdTownId;
    }

    public void setMdTownId(String mdTownId) {
        this.mdTownId = mdTownId == null ? null : mdTownId.trim();
    }

    public String getMdAddress() {
        return mdAddress;
    }

    public void setMdAddress(String mdAddress) {
        this.mdAddress = mdAddress == null ? null : mdAddress.trim();
    }
}