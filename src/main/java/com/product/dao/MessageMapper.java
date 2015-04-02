package com.product.dao;

import java.util.List;

import com.product.model.Message;

public interface MessageMapper {
    int deleteByPrimaryKey(Integer mId);

    int insertSelective(Message record);

    Message selectByPrimaryKey(Integer mId);
    List<Message> selectByPaging(Integer begin,Integer number);
    int selectCount();
    
    
    int updateByPrimaryKeySelective(Message record);
}