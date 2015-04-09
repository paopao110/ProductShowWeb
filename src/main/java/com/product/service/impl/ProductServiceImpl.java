package com.product.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.ProductMapper;
import com.product.model.Product;
import com.product.service.ProductServiceI;

@Service
public class ProductServiceImpl implements ProductServiceI{

	private ProductMapper productMapper;
	@Autowired
	public ProductServiceImpl(ProductMapper _productMapper){
		this.productMapper = _productMapper;
	}
	
	public int insertProduct(Product product) {
		return productMapper.insertSelective(product);
	}

	public int deleteProductById(Integer id) {
		return productMapper.deleteByPrimaryKey(id);
	}

	public int updateProductById(Product product) {
		return productMapper.updateByPrimaryKeySelective(product);
	}

	public List<Product> queryProductByPaging(Integer begin, Integer number) {
		return productMapper.selectByPaging(begin,number);
	}

	public Product queryProductById(Integer id) {
		return productMapper.selectByPrimaryKey(id);
	}

	public int queryCount() {
		return productMapper.selectCount();
	}
	
}
