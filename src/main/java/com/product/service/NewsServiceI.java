package com.product.service;

import java.util.List;

import com.product.model.News;

public interface NewsServiceI {
	List<News> queryNewsByPaging(Integer begin,Integer number);
	News queryNewsById(Integer id);
	
	int deteleNewsById(Integer id);
	int updateNewsById(News news);
	
	int insertNews(News news);
}
