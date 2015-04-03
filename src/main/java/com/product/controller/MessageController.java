package com.product.controller;

import java.io.UnsupportedEncodingException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.product.model.Message;
import com.product.service.MessageServiceI;

@Controller
public class MessageController {
	private MessageServiceI messageService;
	@Autowired
	public MessageController(MessageServiceI _messageService){
		this.messageService = _messageService;
	}
	
	@RequestMapping("sendMessage")
	public @ResponseBody String submitMessage(HttpServletRequest request) 
			throws UnsupportedEncodingException{
		Message msg = new Message();
		msg.setmContent(transCoding(request.getParameter("message")));
		msg.setmEmail(transCoding(request.getParameter("email")));
		msg.setmTel(transCoding(request.getParameter("telphone")));
		msg.setmUsername(transCoding(request.getParameter("name")));
		int flag = messageService.insertMessage(msg);
		if(flag>0){
			return "Mail sent";
		}else{
			return "Mail failed";
		}
	}
	
	@RequestMapping(value="fetchMessageCount",params="admin")
	public @ResponseBody Integer fetchMessageCount(){
		return messageService.queryCount();
	}
	
	@RequestMapping(value="{mId}/viewMsg",params="admin")
	public ModelAndView viewMessage(@PathVariable Integer mId,HttpServletRequest request){
		Message msg = messageService.queryMessageById(mId);
		request.setAttribute("msg", msg);
		return new ModelAndView("admin/modify");
	}
	
	@RequestMapping(value="{mId}/deleteMsg",params="admin")
	public @ResponseBody Boolean deleteMessage(@PathVariable Integer mId){
		int flag  = messageService.deleteMessageById(mId);
		if(flag>0){
			return true;
		}
		return false;
	}
	
	
	private String transCoding(String str){
		String finalStr = "";
		try {
			finalStr = new String(str.getBytes("ISO-8859-1"),"UTF-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		return finalStr;
	}
}
