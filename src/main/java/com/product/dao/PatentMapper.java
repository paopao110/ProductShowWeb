package com.product.dao;

import java.util.List;

import com.product.model.Patent;

public interface PatentMapper {
    int deleteByPrimaryKey(Integer paId);
    int insertSelective(Patent record);
    
    Patent selectByPrimaryKey(Integer paId);
    List<Patent> selectByPaging(Integer begin,Integer number);
    
    int selectCount();
    
    int updateByPrimaryKeySelective(Patent record);

}