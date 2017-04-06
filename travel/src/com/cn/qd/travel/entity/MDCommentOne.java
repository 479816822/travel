package com.cn.qd.travel.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;


/**
 * 游记回复评论
 * @author langren
 *
 */
public class MDCommentOne {
	private String mdRecid;//主键
	
	private List<MDCommentOne> commentChildren;

	private String mdStdname;

	private String mdRefId;//被评论的评论id，第一级为null

	private BigDecimal mdStdcode;

	private Date mdCreateTime;

	private Date mdAlertDate;

	private String mdAlertUser;

	private Short mdLevel;

	private Date mdCommentTime;//评论时间
	
	private String commentDate;

	private String mdCommentContent;//评论内容


	private String mdCommentPeople;//评论人
	
	
	private MdUser user;//评论人

	private MDTravelNote travel;//被评论的游记
	
	private String mdTravelId;

	private String mdImg;//评论的图片

	private String mdVideo;//视频

	private Long mdPraise;//获赞数





	public List<MDCommentOne> getCommentChildren() {
		return commentChildren;
	}

	public void setCommentChildren(List<MDCommentOne> commentChildren) {
		this.commentChildren = commentChildren;
	}

	public String getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}

	public String getMdTravelId() {
		return mdTravelId;
	}

	public void setMdTravelId(String mdTravelId) {
		this.mdTravelId = mdTravelId;
	}

	public String getMdCommentPeople() {
		return mdCommentPeople;
	}

	public void setMdCommentPeople(String mdCommentPeople) {
		this.mdCommentPeople = mdCommentPeople;
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

	public MdUser getUser() {
		return user;
	}

	public void setUser(MdUser user) {
		this.user = user;
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

	public MDTravelNote getTravel() {
		return travel;
	}

	public void setTravel(MDTravelNote travel) {
		this.travel = travel;
	}

}