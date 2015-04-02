package com.product.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.product.service.SubmenuServiceI;

@Controller
public class SubmenuController {
	private SubmenuServiceI submenuService;
	@Autowired
	public SubmenuController(SubmenuServiceI _submenuService){
		this.submenuService = _submenuService;
	}
	
	@RequestMapping(value="addSubmenuPage",params="admin")
	public ModelAndView linkAddSubmenu(HttpServletRequest request){
		request.setAttribute("submenuPage", true);
		return new ModelAndView("admin/form");
	}
	
	@RequestMapping(value="addSubmenu",params="admin")
	public ModelAndView addSubmenu(){
		return new ModelAndView("");
	}
	
	@RequestMapping(value="deleteSubmenu",params="admin")
	public ModelAndView deleteSubmenu(){
		return new ModelAndView("");
	}
	
	@RequestMapping(value="updateSubmenu",params="admin")
	public ModelAndView updateSubmenu(){
		return new ModelAndView("");
	}
}
