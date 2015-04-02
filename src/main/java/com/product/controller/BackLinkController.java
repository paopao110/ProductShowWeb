package com.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.product.model.Admin;
import com.product.model.Message;
import com.product.model.Submenu;
import com.product.service.AdminServiceI;
import com.product.service.MessageServiceI;
import com.product.service.SubmenuServiceI;

@Controller
public class BackLinkController {
	
	private MessageServiceI sessageService;
	private AdminServiceI adminService;
	private SubmenuServiceI submenuService;
	@Autowired
	public BackLinkController(MessageServiceI _sessageService,AdminServiceI _adminService,
			SubmenuServiceI _submenuService){
		this.sessageService=_sessageService;
		this.adminService = _adminService;
		this.submenuService = _submenuService;
	}
		
	@RequestMapping(value="home",params="admin")
	public ModelAndView linkHome(HttpServletRequest request){
		List<Message> list = sessageService.queryMessageByPaging(0, 5);
		request.setAttribute("msgList", list);
		return new ModelAndView("admin/home");
	}
	
	@RequestMapping(value="submenu",params="admin")
	public ModelAndView linkSubmenu(HttpServletRequest request){
		List<Submenu> list = submenuService.queryAllSubmenu();
		request.setAttribute("submenu", list);
		return new ModelAndView("admin/submenu");
	}
	
	@RequestMapping(value="product",params="admin")
	public ModelAndView linkProduct(){
		return new ModelAndView("admin/product");
	}
	
	@RequestMapping(value="patent",params="admin")
	public ModelAndView linkPatent(){
		return new ModelAndView("admin/patent");
	}
	
	@RequestMapping(value="message",params="admin")
	public ModelAndView linkMessage(HttpServletRequest request){
		int pno = fetchCurrentPager(request.getParameter("pno"));
		List<Message> list = sessageService.queryMessageByPaging((pno-1)*5, 5);
		request.setAttribute("msgList", list);
		return new ModelAndView("admin/message");
	}
	
	@RequestMapping(value="modifyPass",params="admin")
	public ModelAndView linkModifyPass(HttpServletRequest request){
		Admin admin = new Admin();
		admin.setaId(1);
		admin.setaName("paopao110");
		request.setAttribute("user", admin);
		return new ModelAndView("admin/modify");
	}
	
	private int fetchCurrentPager(String pno){
		int currentNumber = 1;
		if(pno!=null&&pno.matches("\\d+")){
			currentNumber = Integer.parseInt(pno);
		}
		return currentNumber;
	}
}
