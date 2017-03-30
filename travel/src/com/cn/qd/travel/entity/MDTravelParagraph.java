package com.cn.qd.travel.entity;

public class MDTravelParagraph {
    private String mdRecid;

    private String mdParagraphName;

    private String mdImg;

    private String mdVideo;

    private Short mdStdcode;
    
    private String mdTavelId;

  
    private MDTravelNote tavel;

    private String mdContent;
    
    

    public String getMdRecid() {
        return mdRecid;
    }

    public void setMdRecid(String mdRecid) {
        this.mdRecid = mdRecid == null ? null : mdRecid.trim();
    }

    public String getMdParagraphName() {
        return mdParagraphName;
    }

    public void setMdParagraphName(String mdParagraphName) {
        this.mdParagraphName = mdParagraphName == null ? null : mdParagraphName.trim();
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

    public Short getMdStdcode() {
        return mdStdcode;
    }

    public void setMdStdcode(Short mdStdcode) {
        this.mdStdcode = mdStdcode;
    }


    public MDTravelNote getTavel() {
		return tavel;
	}

	public void setTavel(MDTravelNote tavel) {
		this.tavel = tavel;
	}

	public String getMdContent() {
        return mdContent;
    }

    public void setMdContent(String mdContent) {
        this.mdContent = mdContent == null ? null : mdContent.trim();
    }

	public String getMdTavelId() {
		return mdTavelId;
	}

	public void setMdTavelId(String mdTavelId) {
		this.mdTavelId = mdTavelId;
	}
    
}