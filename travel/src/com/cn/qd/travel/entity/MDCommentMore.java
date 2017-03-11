package com.cn.qd.travel.entity;

import java.math.BigDecimal;
import java.util.Date;

public class MDCommentMore {
	private String mdRecid;

	private String mdStdname;

	private String mdRefId;

	private BigDecimal mdStdcode;

	private Date mdCreateTime;

	private Date mdAlertDate;

	private String mdAlertUser;

	private Short mdLevel;

	private Date mdCommentTime;

	private String mdCommentContent;

	private String mdCommentPeople;

	private String mdImg;

	private String mdVideo;

	private Long mdPraise;

	private MDCommentMore commentMore;

	private MDCommentOne commentOne;

	public MDCommentMore getCommentMore() {
		return commentMore;
	}

	public void setCommentMore(MDCommentMore commentMore) {
		this.commentMore = commentMore;
	}

	public MDCommentOne getCommentOne() {
		return commentOne;
	}

	public void setCommentOne(MDCommentOne commentOne) {
		this.commentOne = commentOne;
	}

	/**
	 * 游记评论人
	 */
	private MdUser user;
	/**
	 * 评论的游记
	 */
	private MDTravelNote travel;

	private String mdCommentMoreId;

	public MdUser getUser() {
		return user;
	}

	public void setUser(MdUser user) {
		this.user = user;
	}

	public MDTravelNote getTravel() {
		return travel;
	}

	public void setTravel(MDTravelNote travel) {
		this.travel = travel;
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

	public Date getMdCommentTime() {
		return mdCommentTime;
	}

	public void setMdCommentTime(Date mdCommentTime) {
		this.mdCommentTime = mdCommentTime;
	}

	public String getMdCommentContent() {
		return mdCommentContent;
	}

	public void setMdCommentContent(String mdCommentContent) {
		this.mdCommentContent = mdCommentContent == null ? null : mdCommentContent.trim();
	}

	public String getMdCommentPeople() {
		return mdCommentPeople;
	}

	public void setMdCommentPeople(String mdCommentPeople) {
		this.mdCommentPeople = mdCommentPeople == null ? null : mdCommentPeople.trim();
	}

	public String getMdImg() {
		return mdImg;
	}

	public void setMdImg(String mdImg) {
		this.mdImg = mdImg == null ? null : mdImg.trim();
	}

	public String getMdVideo() {
		return mdVideo;
	}

	public void setMdVideo(String mdVideo) {
		this.mdVideo = mdVideo == null ? null : mdVideo.trim();
	}

	public Long getMdPraise() {
		return mdPraise;
	}

	public void setMdPraise(Long mdPraise) {
		this.mdPraise = mdPraise;
	}

	public String getMdCommentMoreId() {
		return mdCommentMoreId;
	}

	public void setMdCommentMoreId(String mdCommentMoreId) {
		this.mdCommentMoreId = mdCommentMoreId == null ? null : mdCommentMoreId.trim();
	}

	public String getMdCommentOneId() {
		return getMdCommentOneId();
	}

}