package com.product.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.product.model.Patent;
import com.product.service.PatentServiceI;

@Controller
public class PatentController {
	
	@Autowired
	private PatentServiceI patentService;
	
	@RequestMapping(value="addPatentPage",params="admin")
	public ModelAndView linkAddPatent(HttpServletRequest request){
		request.setAttribute("patentPage", true);
		return new ModelAndView("admin/form");
	}
	
	@RequestMapping(value="addPatent",params="admin")
	public ModelAndView addPatent(@ModelAttribute Patent patent,HttpServletRequest request){
		patentService.insertPatent(patent);
		return new ModelAndView(new RedirectView(request.getContextPath()+"/patent?admin"));
	}
	
	@RequestMapping(value="{paId}/deletePatent",params="admin")
	public @ResponseBody Boolean delete(@PathVariable int paId,HttpServletRequest request){
		int flag = patentService.deletePatentById(paId);
		if(flag > 0){
			return true;
		}
		return false;
	}
	
	@RequestMapping(value="{paId}/viewPatent",params="admin")
	public ModelAndView viewPatent(@PathVariable int paId,HttpServletRequest request){
		Patent patent = patentService.queryPatentById(paId);
		request.setAttribute("patent", patent);
		return new ModelAndView("admin/modify");
	}
	
	@RequestMapping(value="updatePatent",params="admin")
	public ModelAndView updatePatent(@ModelAttribute Patent patent,HttpServletRequest request){
		patentService.updatePatentById(patent);
		return new ModelAndView(new RedirectView(request.getContextPath()+"/patent?admin"));
	}
	
	@RequestMapping(value="fetchPatentCount",params="admin")
	public @ResponseBody Integer fetchPatentCount(){
		return patentService.queryCount();
	}
}
