package com.product.junit;

import static org.junit.Assert.*;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.product.model.Admin;
import com.product.service.AdminServiceI;
import com.product.service.impl.AdminServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml","classpath:spring-mybatis.xml"})
public class AdminTest {

	private AdminServiceI adminService;
	
	public AdminServiceI getAdminService() {
		return adminService;
	}
	@Autowired
	public void setAdminService(AdminServiceI adminService) {
		this.adminService = adminService;
	}

	@Test
	public void query(){
		System.out.println(adminService.queryAdminByName(""));
	}
	
	@Test
	public void update(){
		Admin admin = new Admin();
		admin.setaName("aaa");
		admin.setaPasswd("bbb");
		admin.setaTimestamp(new Date());
		adminService.updateAdminByName(admin);
	}
}
