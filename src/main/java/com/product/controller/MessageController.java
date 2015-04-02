package com.product.controller;

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
	public @ResponseBody String submitMessage(HttpServletRequest request){
		Message msg = new Message();
		msg.setmContent(request.getParameter("message"));
		msg.setmEmail(request.getParameter("email"));
		msg.setmTel(request.getParameter("telphone"));
		msg.setmUsername(request.getParameter("name"));
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
	public @ResponseBody Boolean deleteMessage(@PathVariable Integer mId,HttpServletRequest request){
		int flag  = messageService.deleteMessageById(mId);
		if(flag>0){
			return true;
		}
		return false;
	}
}
