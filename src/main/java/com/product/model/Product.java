package com.product.model;

import java.util.List;

public class Product {
    private Integer pId;

    private Integer sId;

    private String pSummary;

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

	public List<Images> getImages() {
		return images;
	}

	public void setImages(List<Images> images) {
		this.images = images;
	}
    
}