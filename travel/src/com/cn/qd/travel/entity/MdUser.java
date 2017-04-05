package com.cn.qd.travel.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * @author anmeihua
 *	用户Entity
 */
public class MdUser {
	
	private List<MDFriendShip> frind;//好友
	
	private String passport;//找回密码
	
	private String userHeadImg;
	
	private String Code;//验证码
	
    private String mdUserRecid;	//id
    
    private String mdUserName;	//用户名

    private String mdTelephone;	//电话
    
    private String mdPassword;	//密码

    private String mdEmail;	//邮箱

    private String mdNewPassword;	//新密码                                     

    private String mdStdname;//记录是否已经登陆

    private String mdRefId;

    private BigDecimal mdStdcode;

    private Date mdAlertDate;

    private String mdAlertUser;

    private String mdSex;

    private Short mdAge;

    private Date mdCreateTime;

    private String mdIsVip;

    private String mdLevel;

    private String mdSignature;

    private Long mdScore;

    private Date mdGraduationDate;

    private Integer mdEmsCode;

    private Long mdPraise;

    private byte[]  mdIcon;
    
    private String mdSchool;
    
    //用户银行
    private MD_BANK_ACUONT userBank;
    

    public MD_BANK_ACUONT getUserBank() {
		return userBank;
	}

	public void setUserBank(MD_BANK_ACUONT userBank) {
		this.userBank = userBank;
	}

	public String getPassport() {
		return passport;
	}

	public void setPassport(String passport) {
		this.passport = passport;
	}

	public String getUserHeadImg() {
		return userHeadImg;
	}


	public List<MDFriendShip> getFrind() {
		return frind;
	}

	public void setFrind(List<MDFriendShip> frind) {
		this.frind = frind;
	}

	public void setUserHeadImg(String userHeadImg) {
		this.userHeadImg = userHeadImg;
	}

	public String getMdSchool() {
		return mdSchool;
	}

	public void setMdSchool(String mdSchool) {
		this.mdSchool = mdSchool;
	}

	public String getCode() {
		return Code;
	}

	public void setCode(String code) {
		Code = code;
	}

	public String getMdUserRecid() {
        return mdUserRecid;
    }

    public void setMdUserRecid(String mdUserRecid) {
        this.mdUserRecid = mdUserRecid == null ? null : mdUserRecid.trim();
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

    public String getMdUserName() {
        return mdUserName;
    }

    public void setMdUserName(String mdUserName) {
        this.mdUserName = mdUserName == null ? null : mdUserName.trim();
    }

    public String getMdTelephone() {
        return mdTelephone;
    }

    public void setMdTelephone(String mdTelephone) {
        this.mdTelephone = mdTelephone == null ? null : mdTelephone.trim();
    }

    public String getMdSex() {
        return mdSex;
    }

    public void setMdSex(String mdSex) {
        this.mdSex = mdSex == null ? null : mdSex.trim();
    }

    public Short getMdAge() {
        return mdAge;
    }

    public void setMdAge(Short mdAge) {
        this.mdAge = mdAge;
    }

    public Date getMdCreateTime() {
        return mdCreateTime;
    }

    public void setMdCreateTime(Date mdCreateTime) {
        this.mdCreateTime = mdCreateTime;
    }

    public String getMdPassword() {
        return mdPassword;
    }

    public void setMdPassword(String mdPassword) {
        this.mdPassword = mdPassword == null ? null : mdPassword.trim();
    }

    public String getMdEmail() {
        return mdEmail;
    }

    public void setMdEmail(String mdEmail) {
        this.mdEmail = mdEmail == null ? null : mdEmail.trim();
    }

    public String getMdIsVip() {
        return mdIsVip;
    }

    public void setMdIsVip(String mdIsVip) {
        this.mdIsVip = mdIsVip == null ? null : mdIsVip.trim();
    }

    public String getMdLevel() {
        return mdLevel;
    }

    public void setMdLevel(String mdLevel) {
        this.mdLevel = mdLevel == null ? null : mdLevel.trim();
    }

    public String getMdSignature() {
        return mdSignature;
    }

    public void setMdSignature(String mdSignature) {
        this.mdSignature = mdSignature == null ? null : mdSignature.trim();
    }

    public Long getMdScore() {
        return mdScore;
    }

    public void setMdScore(Long mdScore) {
        this.mdScore = mdScore;
    }

    public Date getMdGraduationDate() {
        return mdGraduationDate;
    }

    public void setMdGraduationDate(Date mdGraduationDate) {
        this.mdGraduationDate = mdGraduationDate;
    }

    public Integer getMdEmsCode() {
        return mdEmsCode;
    }

    public void setMdEmsCode(Integer mdEmsCode) {
        this.mdEmsCode = mdEmsCode;
    }

    public Long getMdPraise() {
        return mdPraise;
    }

    public void setMdPraise(Long mdPraise) {
        this.mdPraise = mdPraise;
    }


	public byte[] getMdIcon() {
		return mdIcon;
	}

	public void setMdIcon(byte[] mdIcon) {
		this.mdIcon = mdIcon;
	}

	public String getMdNewPassword() {
		return mdNewPassword;
	}

	public void setMdNewPassword(String mdNewPassword) {
		this.mdNewPassword = mdNewPassword;
	}
}