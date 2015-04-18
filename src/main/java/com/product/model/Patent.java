package com.product.model;

public class Patent {
    private Integer paId;

    private String paName;
    
    private String paNumber;

    private String paDate;

    private String paCategory;

    private String paState;

    private String paPerson;

    private String paAgent;

    private String paInventor;

    public Integer getPaId() {
        return paId;
    }

    public void setPaId(Integer paId) {
        this.paId = paId;
    }

    public String getPaNumber() {
        return paNumber;
    }

    public void setPaNumber(String paNumber) {
        this.paNumber = paNumber == null ? null : paNumber.trim();
    }

    public String getPaName() {
		return paName;
	}

	public void setPaName(String paName) {
		this.paName = paName;
	}

	public String getPaDate() {
        return paDate;
    }

    public void setPaDate(String paDate) {
        this.paDate = paDate == null ? null : paDate.trim();
    }

    public String getPaCategory() {
        return paCategory;
    }

    public void setPaCategory(String paCategory) {
        this.paCategory = paCategory == null ? null : paCategory.trim();
    }

    public String getPaState() {
        return paState;
    }

    public void setPaState(String paState) {
        this.paState = paState == null ? null : paState.trim();
    }

    public String getPaPerson() {
        return paPerson;
    }

    public void setPaPerson(String paPerson) {
        this.paPerson = paPerson == null ? null : paPerson.trim();
    }

    public String getPaAgent() {
        return paAgent;
    }

    public void setPaAgent(String paAgent) {
        this.paAgent = paAgent == null ? null : paAgent.trim();
    }

    public String getPaInventor() {
        return paInventor;
    }

    public void setPaInventor(String paInventor) {
        this.paInventor = paInventor == null ? null : paInventor.trim();
    }
}