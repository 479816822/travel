package com.cn.qd.travel.entity;

import java.util.Date;

public class MdAnswerinfo {
    private String answerId;

    private String quesId;

    private String answerUserId;

    private Date sendDate;

    private String answerMsg;

    private String answerImg;

    private String answerChoose;

    private Long answerPraise;

    private Long answerRec;

    private Long answeRecnum;

    public String getAnswerId() {
        return answerId;
    }

    public void setAnswerId(String answerId) {
        this.answerId = answerId == null ? null : answerId.trim();
    }

    public String getQuesId() {
        return quesId;
    }

    public void setQuesId(String quesId) {
        this.quesId = quesId == null ? null : quesId.trim();
    }

    public String getAnswerUserId() {
        return answerUserId;
    }

    public void setAnswerUserId(String answerUserId) {
        this.answerUserId = answerUserId == null ? null : answerUserId.trim();
    }

    public Date getSendDate() {
        return sendDate;
    }

    public void setSendDate(Date sendDate) {
        this.sendDate = sendDate;
    }

    public String getAnswerMsg() {
        return answerMsg;
    }

    public void setAnswerMsg(String answerMsg) {
        this.answerMsg = answerMsg == null ? null : answerMsg.trim();
    }

    public String getAnswerImg() {
        return answerImg;
    }

    public void setAnswerImg(String answerImg) {
        this.answerImg = answerImg == null ? null : answerImg.trim();
    }

    public String getAnswerChoose() {
        return answerChoose;
    }

    public void setAnswerChoose(String answerChoose) {
        this.answerChoose = answerChoose == null ? null : answerChoose.trim();
    }

    public Long getAnswerPraise() {
        return answerPraise;
    }

    public void setAnswerPraise(Long answerPraise) {
        this.answerPraise = answerPraise;
    }

    public Long getAnswerRec() {
        return answerRec;
    }

    public void setAnswerRec(Long answerRec) {
        this.answerRec = answerRec;
    }

    public Long getAnsweRecnum() {
        return answeRecnum;
    }

    public void setAnsweRecnum(Long answeRecnum) {
        this.answeRecnum = answeRecnum;
    }
}