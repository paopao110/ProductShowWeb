package com.product.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.AdminMapper;
import com.product.model.Admin;
import com.product.service.AdminServiceI;

@Service
public class AdminServiceImpl implements AdminServiceI{

	private AdminMapper adminMapper;
	@Autowired
	public AdminServiceImpl(AdminMapper _adminMapper){
		this.adminMapper = _adminMapper;
	}
	
	public Admin queryAdminByName(String aName) {
		return adminMapper.selectByName(aName);
	}

	public int updateAdminByName(Admin admin) {
		return adminMapper.updateByName(admin);
	}

}
