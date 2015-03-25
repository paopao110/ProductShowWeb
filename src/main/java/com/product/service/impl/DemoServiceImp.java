package com.product.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.DemoMapper;
import com.product.model.Demo;
import com.product.service.DemoServiceI;

@Service
public class DemoServiceImp implements DemoServiceI{

	private DemoMapper demoMapper;

	public DemoMapper getDemoMapper() {
		return demoMapper;
	}
	
	@Autowired
	public void setDemoMapper(DemoMapper demoMapper) {
		this.demoMapper = demoMapper;
	}


	public Demo queryDemoById(Integer id) {
		
		return demoMapper.selectByPrimaryKey(id);
	}

}
