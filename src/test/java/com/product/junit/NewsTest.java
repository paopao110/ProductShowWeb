package com.product.junit;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.product.model.News;
import com.product.service.NewsServiceI;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml","classpath:spring-mybatis.xml"})
public class NewsTest {
	private NewsServiceI newsService;
	@Autowired
	public void setNewsService(NewsServiceI newsService) {
		this.newsService = newsService;
	}
	
	@Test
	public void query(){
		News news = newsService.queryNewsById(1);
		System.out.println("=============="+JSON.toJSONString(news));
	}
	
	@Test
	public void queryByPaging(){
		List<News> list = newsService.queryNewsByPaging(0, 10);
		for(News sub:list){
			System.out.println(sub.getnContent());
		}
	}
	
	@Test
	public void insert(){
		News news = new News();
		for(int i = 0 ;i<20;i++){
			news.setnTitle(i+"xxxxxxxxxxxxxxxxx");
			news.setnContent(i+"sssssssssssssssssssssssss");
			int flag = newsService.insertNews(news);
			System.out.println(flag);
		}
	}
}
