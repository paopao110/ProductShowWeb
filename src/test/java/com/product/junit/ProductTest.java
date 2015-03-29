package com.product.junit;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.product.model.Product;
import com.product.service.ProductServiceI;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml","classpath:spring-mybatis.xml"})
public class ProductTest {

	private ProductServiceI productService;
	@Autowired
	public void setProductService(ProductServiceI productService) {
		this.productService = productService;
	}
	
	@Test
	public void query(){
		Product product = productService.queryProductById(1);
		System.out.println("=================="+JSON.toJSON(product));
	}
	
	@Test
	public void queryByPaging(){
		List<Product> list = productService.queryProductByPaging(0, 9);
		for(Product product:list){
			System.out.println(JSON.toJSON(product));
		}
	}
	
	@Test
	public void insert(){
		Product product = new Product();
		for(int i = 0;i<10;i++){
			product.setpTitle("hello");
			product.setpSummary("xxxxxxxxxxxxxxxxxxx");
			product.setsId(1);
			product.setpContent("nxnnnnnnxxxxxxxxxxxxxxnnxnxnx");
			productService.insertProduct(product);
		}
	}
}
