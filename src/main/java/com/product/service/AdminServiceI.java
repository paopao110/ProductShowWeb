package com.product.service;

import com.product.model.Admin;

public interface AdminServiceI {
	Admin queryAdminByName(String aName);
	int updateAdminByName(Admin admin);
}
