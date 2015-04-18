package com.product.service;

import java.util.List;

import com.product.model.Patent;

public interface PatentServiceI {
	public List<Patent> queryPatentByPaging(Integer begin,Integer number);
	public Patent queryPatentById(Integer paid);
	
	public int deletePatentById(Integer paid);
	public int updatePatentById(Patent patent);
	public int queryCount();
	public int insertPatent(Patent patent);
}
