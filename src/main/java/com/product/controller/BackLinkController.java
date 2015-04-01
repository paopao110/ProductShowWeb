package com.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BackLinkController {
	
	@RequestMapping(value="home",params="admin")
	public ModelAndView linkHome(){
		return new ModelAndView("admin/home");
	}
}
