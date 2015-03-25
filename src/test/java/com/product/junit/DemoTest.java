package com.product.junit;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.product.service.DemoServiceI;
import com.product.service.impl.DemoServiceImp;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml","classpath:spring-mybatis.xml"})
public class DemoTest {

	private DemoServiceI demoService;
	public DemoServiceI getDemoService() {
		return demoService;
	}
	@Autowired
	public void setDemoService(DemoServiceI demoService) {
		this.demoService = demoService;
	}



	@Test
	public void queryDemo(){
		System.out.println(JSON.toJSON(demoService.queryDemoById(1)));
	}
}
