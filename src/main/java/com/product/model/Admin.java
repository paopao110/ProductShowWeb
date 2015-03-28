package com.product.model;

import java.util.Date;

public class Admin {
    private Integer aId;

    private String aName;

    private String aPasswd;

    private Date aTimestamp;

    public Integer getaId() {
        return aId;
    }

    public void setaId(Integer aId) {
        this.aId = aId;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName == null ? null : aName.trim();
    }

    public String getaPasswd() {
        return aPasswd;
    }

    public void setaPasswd(String aPasswd) {
        this.aPasswd = aPasswd == null ? null : aPasswd.trim();
    }

    public Date getaTimestamp() {
        return aTimestamp;
    }

    public void setaTimestamp(Date aTimestamp) {
        this.aTimestamp = aTimestamp;
    }
}