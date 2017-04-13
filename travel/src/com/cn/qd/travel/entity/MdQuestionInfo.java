package com.cn.qd.travel.entity;

import java.util.Date;

public class MdQuestionInfo {
    private String quesId;

    private String askQuestionerId;

    private String quesTitle;

    private String quesMes;

    private String quesImg;

    private String keyWord;

    private Date sendDate;

    private Long quesPraise;

    private Long quesBrowse;

    private String quesDes;

    private String quesFollow;

    private String isAnswered;

    private Long quesHoney;

    private String isPhone;

    public String getQuesId() {
        return quesId;
    }

    public void setQuesId(String quesId) {
        this.quesId = quesId == null ? null : quesId.trim();
    }

    public String getAskQuestionerId() {
        return askQuestionerId;
    }

    public void setAskQuestionerId(String askQuestionerId) {
        this.askQuestionerId = askQuestionerId == null ? null : askQuestionerId.trim();
    }

    public String getQuesTitle() {
        return quesTitle;
    }

    public void setQuesTitle(String quesTitle) {
        this.quesTitle = quesTitle == null ? null : quesTitle.trim();
    }

    public String getQuesMes() {
        return quesMes;
    }

    public void setQuesMes(String quesMes) {
        this.quesMes = quesMes == null ? null : quesMes.trim();
    }

    public String getQuesImg() {
        return quesImg;
    }

    public void setQuesImg(String quesImg) {
        this.quesImg = quesImg == null ? null : quesImg.trim();
    }

    public String getKeyWord() {
        return keyWord;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord == null ? null : keyWord.trim();
    }

    public Date getSendDate() {
        return sendDate;
    }

    public void setSendDate(Date sendDate) {
        this.sendDate = sendDate;
    }

    public Long getQuesPraise() {
        return quesPraise;
    }

    public void setQuesPraise(Long quesPraise) {
        this.quesPraise = quesPraise;
    }

    public Long getQuesBrowse() {
        return quesBrowse;
    }

    public void setQuesBrowse(Long quesBrowse) {
        this.quesBrowse = quesBrowse;
    }

    public String getQuesDes() {
        return quesDes;
    }

    public void setQuesDes(String quesDes) {
        this.quesDes = quesDes == null ? null : quesDes.trim();
    }

    public String getQuesFollow() {
        return quesFollow;
    }

    public void setQuesFollow(String quesFollow) {
        this.quesFollow = quesFollow == null ? null : quesFollow.trim();
    }

    public String getIsAnswered() {
        return isAnswered;
    }

    public void setIsAnswered(String isAnswered) {
        this.isAnswered = isAnswered == null ? null : isAnswered.trim();
    }

    public Long getQuesHoney() {
        return quesHoney;
    }

    public void setQuesHoney(Long quesHoney) {
        this.quesHoney = quesHoney;
    }

    public String getIsPhone() {
        return isPhone;
    }

    public void setIsPhone(String isPhone) {
        this.isPhone = isPhone == null ? null : isPhone.trim();
    }
}