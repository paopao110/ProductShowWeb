package com.product.dao;

import com.product.model.Images;

public interface ImagesMapper {
    int deleteByPrimaryKey(Integer iId);

    int insert(Images record);

    int insertSelective(Images record);

    Images selectByPrimaryKey(Integer iId);

    int updateByPrimaryKeySelective(Images record);

    int updateByPrimaryKey(Images record);
}