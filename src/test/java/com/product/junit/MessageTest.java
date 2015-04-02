package com.product.junit;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.product.model.Message;
import com.product.service.MessageServiceI;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml","classpath:spring-mybatis.xml"})
public class MessageTest {

	private MessageServiceI messageService;
	@Autowired
	public void setMessageService(MessageServiceI messageService) {
		this.messageService = messageService;
	}
	
	@Test
	public void insert(){
		Message message = new Message();
		for(int i = 0;i<10;i++){
			message.setmUsername("paopao"+i);
			message.setmTel("182918291829");
			message.setmEmail("ccccc@126.com");
			message.setmContent("xxxxxxxxxxxx");
			messageService.insertMessage(message);
		}
	}
	@Test
	public void queryCount(){
		System.out.println(messageService.queryCount());
	}
	
	@Test
	public void queryByPaging(){
		System.out.println(JSON.toJSON(messageService.queryMessageByPaging(0, 5)));
	}
}
