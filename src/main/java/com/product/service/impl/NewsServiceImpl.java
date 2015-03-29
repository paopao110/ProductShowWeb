package com.product.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.NewsMapper;
import com.product.model.News;
import com.product.service.NewsServiceI;

@Service
public class NewsServiceImpl implements NewsServiceI{

	private NewsMapper newsMapper;
	@Autowired
	public NewsServiceImpl(NewsMapper _newsMapper){
		this.newsMapper = _newsMapper;
	}
	
	public List<News> queryNewsByPaging(Integer begin, Integer number) {
		return newsMapper.selectByPaging(begin, number);
	}

	public News queryNewsById(Integer id) {
		return newsMapper.selectByPrimaryKey(id);
	}

	public int deteleNewsById(Integer id) {
		return newsMapper.deleteByPrimaryKey(id);
	}

	public int updateNewsById(News news) {
		return newsMapper.updateByPrimaryKeySelective(news);
	}

	public int insertNews(News news) {
		return newsMapper.insertSelective(news);
	}

}
