package com.product.dao;

import com.product.model.Admin;

public interface AdminMapper {

    Admin selectByName(String aName);
    int updateByName(Admin record);

}