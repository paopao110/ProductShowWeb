package com.product.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.MessageMapper;
import com.product.model.Message;
import com.product.service.MessageServiceI;

@Service
public class MessageServiceImpl implements MessageServiceI{

	private MessageMapper messageMapper;
	@Autowired
	public MessageServiceImpl(MessageMapper _messageMapper){
		this.messageMapper = _messageMapper;
	}
	
	public int insertMessage(Message message) {
		return messageMapper.insertSelective(message);
	}

	public int deleteMessageById(Integer id) {
		return messageMapper.deleteByPrimaryKey(id);
	}

	public int updateMessageById(Message message) {
		return messageMapper.updateByPrimaryKeySelective(message);
	}

	public List<Message> queryMessageByPaging(Integer begin, Integer number) {
		return messageMapper.selectByPaing(begin,number);
	}

	public Message queryMessageById(Integer id) {
		return messageMapper.selectByPrimaryKey(id);
	}

}
