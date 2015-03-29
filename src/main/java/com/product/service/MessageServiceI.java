package com.product.service;

import java.util.List;
import com.product.model.Message;

public interface MessageServiceI {
	int insertMessage(Message message);
	int deleteMessageById(Integer id);
	int updateMessageById(Message message);
	
	List<Message> queryMessageByPaging(Integer begin,Integer number);
	Message queryMessageById(Integer id);
}
