package com.cn.qd.travel.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public class MDTravelNote {

	private List<MDTravelParagraph> listTravlePagragraph;

	private String mdRecid;

	private String mdStdname;//获赞数

	private String mdRefId;

	private BigDecimal mdStdcode;

	private Date mdAlertDate;

	private String mdAlertUser;

	private Short mdLevel;

	private String mdThemeImg;

	private Date mdCreateTime;
	

	private MdUser user;

	private String mdKeyWord;

	private String mdTheme;

	private String mdMusic;

	private Date mdStartTime;

	private Short mdDayNumber;

	private String mdTravelPeople;//人物

	private Long mdCostMoney;

	private String mdAimAddress;
	
	private String mdCreateUserId;
	

	public String getMdCreateUserId() {
		return mdCreateUserId;
	}

	public void setMdCreateUserId(String mdCreateUserId) {
		this.mdCreateUserId = mdCreateUserId;
	}

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
	public List<MDTravelParagraph> getListTravlePagragraph() {
		return listTravlePagragraph;
	}
	
	public void setListTravlePagragraph(List<MDTravelParagraph> listTravlePagragraph) {
		this.listTravlePagragraph = listTravlePagragraph;
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

	public String getMdThemeImg() {
		return mdThemeImg;
	}

	public void setMdThemeImg(String mdThemeImg) {
		this.mdThemeImg = mdThemeImg == null ? null : mdThemeImg.trim();
	}

	public Date getMdCreateTime() {
		return mdCreateTime;
	}

	public void setMdCreateTime(Date mdCreateTime) {
		this.mdCreateTime = mdCreateTime;
	}


	public MdUser getUser() {
		return user;
	}

	public void setUser(MdUser user) {
		this.user = user;
	}

	public String getMdKeyWord() {
		return mdKeyWord;
	}

	public void setMdKeyWord(String mdKeyWord) {
		this.mdKeyWord = mdKeyWord == null ? null : mdKeyWord.trim();
	}

	public String getMdTheme() {
		return mdTheme;
	}

	public void setMdTheme(String mdTheme) {
		this.mdTheme = mdTheme == null ? null : mdTheme.trim();
	}

	public String getMdMusic() {
		return mdMusic;
	}

	public void setMdMusic(String mdMusic) {
		this.mdMusic = mdMusic == null ? null : mdMusic.trim();
	}

	public Date getMdStartTime() {
		return mdStartTime;
	}

	public void setMdStartTime(Date mdStartTime) {
		this.mdStartTime = mdStartTime;
	}

	public Short getMdDayNumber() {
		return mdDayNumber;
	}

	public void setMdDayNumber(Short mdDayNumber) {
		this.mdDayNumber = mdDayNumber;
	}

	public String getMdTravelPeople() {
		return mdTravelPeople;
	}

	public void setMdTravelPeople(String mdTravelPeople) {
		this.mdTravelPeople = mdTravelPeople == null ? null : mdTravelPeople.trim();
	}

	public Long getMdCostMoney() {
		return mdCostMoney;
	}

	public void setMdCostMoney(Long mdCostMoney) {
		this.mdCostMoney = mdCostMoney;
	}

	public String getMdAimAddress() {
		return mdAimAddress;
	}

	public void setMdAimAddress(String mdAimAddress) {
		this.mdAimAddress = mdAimAddress == null ? null : mdAimAddress.trim();
	}
}