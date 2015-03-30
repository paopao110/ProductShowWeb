package com.product.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.product.model.Demo;
import com.product.service.DemoServiceI;

@Controller
@RequestMapping("/demo")
public class DemoController {
	
	private DemoServiceI demoService;

	@Autowired
	public DemoController(DemoServiceI demoService){
		this.demoService = demoService;
	}

	@RequestMapping("{id}/querydem123122221")
	public ModelAndView query(@PathVariable Integer id,HttpServletRequest request){
		Demo demo = demoService.queryDemoById(id);
		System.out.println("===================");
		if(demo!=null){
			request.setAttribute("demo", demo);
		}
		return new ModelAndView("front/index");
	}
	
	@RequestMapping("/index")
	public ModelAndView index(){
		return new ModelAndView("front/index");
	}
	
	@RequestMapping("/contact")
	public ModelAndView contact(){
		return new ModelAndView("front/contact");
	}
}
