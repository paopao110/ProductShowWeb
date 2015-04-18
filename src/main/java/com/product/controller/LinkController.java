package com.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LinkController {
	
	@RequestMapping("/index")
	public ModelAndView linkIndex(){
		return new ModelAndView("front/index");
	}
	
	@RequestMapping("/about")
	public ModelAndView linkAbout(){
		return new ModelAndView("front/about");
	}
	
	@RequestMapping("/product")
	public ModelAndView linkProduct(){
		return new ModelAndView("front/product");
	}
	
	@RequestMapping("/product_full")
	public ModelAndView linkProductFull(){
		return new ModelAndView("front/product_full");
	}
	
	@RequestMapping("/patent")
	public ModelAndView linkPatent(){
		return new ModelAndView("front/patent");
	}
	
	@RequestMapping("/contact")
	public ModelAndView linkContact(){
		return new ModelAndView("front/contact");
	}
}
