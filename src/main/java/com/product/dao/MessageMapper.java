package com.product.dao;

import java.util.List;

import com.product.model.Message;

public interface MessageMapper {
    int deleteByPrimaryKey(Integer mId);

    int insertSelective(Message record);

    Message selectByPrimaryKey(Integer mId);
    List<Message> selectByPaing(Integer begin,Integer number);
    
    int updateByPrimaryKeySelective(Message record);
}