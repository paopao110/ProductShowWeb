package com.product.model;

import java.util.List;

public class Product {
    private Integer pId;

    private Integer sId;
    
    private String pTitle;
    
    private String pSummary;
    
    private String pContent;
    
    private List<Images> images;
    
    
    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    public Integer getsId() {
        return sId;
    }

    public void setsId(Integer sId) {
        this.sId = sId;
    }

    public String getpSummary() {
        return pSummary;
    }

    public void setpSummary(String pSummary) {
        this.pSummary = pSummary == null ? null : pSummary.trim();
    }  
    
	public String getpTitle() {
		return pTitle;
	}

	public void setpTitle(String pTitle) {
		this.pTitle = pTitle;
	}

	public String getpContent() {
		return pContent;
	}

	public void setpContent(String pContent) {
		this.pContent = pContent;
	}

	public List<Images> getImages() {
		return images;
	}

	public void setImages(List<Images> images) {
		this.images = images;
	}
}