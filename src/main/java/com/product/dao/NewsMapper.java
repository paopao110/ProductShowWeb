package com.product.dao;

import java.util.List;

import com.product.model.News;

public interface NewsMapper {
    int deleteByPrimaryKey(Integer nId);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(Integer nId);
    List<News> selectByPaging(Integer begin,Integer number);

    int updateByPrimaryKeySelective(News record);
}