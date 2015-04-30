package com.product.dao;

import java.util.List;

import com.product.model.Product;

public interface ProductMapper {
	Product selectByPrimaryKey(Integer pId);
    List<Product> selectByPaging(Integer begin,Integer number);
    int selectCount();
    
    int insertSelective(Product product);
    int deleteByPrimaryKey(Integer pId);
    int updateByPrimaryKeySelective(Product product);
    List<Product> productsBysId(Integer sId);//通过sId获得产品
}