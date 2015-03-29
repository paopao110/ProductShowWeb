package com.product.junit;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.product.model.Submenu;
import com.product.service.SubmenuServiceI;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml","classpath:spring-mybatis.xml"})
public class SubmenuTest {
	private SubmenuServiceI submenuService;
	@Autowired
	public void setSubmenuService(SubmenuServiceI submenuService) {
		this.submenuService = submenuService;
	}
	
	@Test
	public void queryList(){
		List<Submenu> list = submenuService.queryAllSubmenu();
		System.out.println(JSON.toJSONString(list));
	}
	
	
}
