package com.product.junit;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.product.model.Images;
import com.product.service.ImagesServiceI;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml","classpath:spring-mybatis.xml"})
public class ImagesTest {
	private ImagesServiceI imagesService;
	@Autowired
	public void setImagesService(ImagesServiceI imagesService) {
		this.imagesService = imagesService;
	}
	
	@Test
	public void insert(){
		Images images = new Images();
		for(int i=0;i<10;i++){
			images.setiUrl("ssssssxx");
			images.setiDescription("ssssajsaljsakljslakjslk");
			images.setnId(1);
			imagesService.insertImages(images);
		}
	}
	
	@Test
	public void queryByPaging(){
		List<Images> list =  imagesService.queryImagesByPaging(1, 0, 4,false);
		for(Images images:list){
			System.out.println(images.getiDescription());
		}
	}
}
