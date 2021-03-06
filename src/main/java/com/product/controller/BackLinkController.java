package com.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.product.model.Admin;
import com.product.model.Message;
import com.product.model.Patent;
import com.product.model.Product;
import com.product.model.Submenu;
import com.product.service.AdminServiceI;
import com.product.service.MessageServiceI;
import com.product.service.PatentServiceI;
import com.product.service.ProductServiceI;
import com.product.service.SubmenuServiceI;

@Controller
public class BackLinkController {
	
	@Autowired
	private MessageServiceI sessageService;
	private AdminServiceI adminService;
	@Autowired
	private SubmenuServiceI submenuService;
	@Autowired
	private ProductServiceI productService;
	@Autowired
	private PatentServiceI patentService;
		
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
	public ModelAndView linkProduct(HttpServletRequest request){
		int pno = fetchCurrentPager(request.getParameter("pno"));
		List<Product> list = productService.queryProductByPaging((pno-1)*5, 5);
		request.setAttribute("products", list);
		return new ModelAndView("admin/product");
	}
	
	@RequestMapping(value="patent",params="admin")
	public ModelAndView linkPatent(HttpServletRequest request){
		int pno = fetchCurrentPager(request.getParameter("pno"));
		List<Patent> list = patentService.queryPatentByPaging((pno-1)*5, 5);
		request.setAttribute("patents", list);
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
