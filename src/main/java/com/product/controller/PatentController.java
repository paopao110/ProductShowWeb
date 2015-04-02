package com.product.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PatentController {
	
	@RequestMapping(value="addPatentPage",params="admin")
	public ModelAndView linkAddSubmenu(HttpServletRequest request){
		request.setAttribute("patentPage", true);
		return new ModelAndView("admin/form");
	}
}
