package com.product.service;

import java.util.List;

import com.product.model.Product;

public interface ProductServiceI {
	int insertProduct(Product product);
	int deleteProductById(Integer id);
	int updateProductById(Product product);
	
	List<Product> queryProductByPaging(Integer begin,Integer number);
	Product queryProductById(Integer id);
	int queryCount();
	int queryCountWithSubmenu(Integer sId);
	List<Product> productsBysId(Integer sId,Integer begin,Integer number);
}
