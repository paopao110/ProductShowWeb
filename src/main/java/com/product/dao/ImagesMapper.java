package com.product.dao;

import java.util.List;

import com.product.model.Images;

public interface ImagesMapper {
	Images selectByPrimaryKey(Integer iId);
	List<Images> selectByPagingWithPID(Integer pId,Integer begin,Integer number);
	List<Images> selectByPagingWithNID(Integer nId,Integer begin,Integer number);
	
    int deleteByPrimaryKey(Integer iId);

    int insertSelective(Images images);
    
    int updateByPrimaryKeySelective(Images images);
}