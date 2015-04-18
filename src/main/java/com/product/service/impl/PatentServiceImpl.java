package com.product.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.PatentMapper;
import com.product.model.Patent;
import com.product.service.PatentServiceI;

@Service
public class PatentServiceImpl implements PatentServiceI{

	@Autowired
	private PatentMapper patentMapper;
	
	public List<Patent> queryPatentByPaging(Integer begin, Integer number) {
		return patentMapper.selectByPaging(begin, number);
	}

	public Patent queryPatentById(Integer paid) {
		return patentMapper.selectByPrimaryKey(paid);
	}

	public int deletePatentById(Integer paid) {
		return patentMapper.deleteByPrimaryKey(paid);
	}

	public int updatePatentById(Patent patent) {
		return patentMapper.updateByPrimaryKeySelective(patent);
	}

	public int insertPatent(Patent patent) {
		return patentMapper.insertSelective(patent);
	}

	public int queryCount() {
		return patentMapper.selectCount();
	}

}
