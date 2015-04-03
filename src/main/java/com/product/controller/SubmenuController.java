package com.product.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.product.model.Submenu;
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
	
	//add Submenu
	@RequestMapping(value="addSubmenu",params="admin",method=RequestMethod.POST)
	public ModelAndView addSubmenu(@ModelAttribute Submenu submenu,HttpServletRequest request){
		int flag = 0;
		if(submenu!=null){
			flag = submenuService.insertSubmenu(submenu);
		}
		return new ModelAndView(new RedirectView(request.getContextPath()+"/submenu?admin"));
	}
	
	@RequestMapping(value="{sId}/viewSubmenu",params="admin")
	public ModelAndView viewSubmenu(@PathVariable Integer sId,HttpServletRequest request){
		Submenu submenu = submenuService.querySubmenuById(sId);
		request.setAttribute("submenu", submenu);
		return new ModelAndView("admin/modify");
	}
	
	@RequestMapping(value="{sId}/deleteSubmenu",params="admin")
	public @ResponseBody Boolean deleteSubmenu(@PathVariable Integer sId){
		int flag = submenuService.deleteSubmenuById(sId);
		if(flag>0){
			return true;
		}
		return false;
	}
	
	@RequestMapping(value="updateSubmenu",params="admin",method=RequestMethod.POST)
	public ModelAndView updateSubmenu(@ModelAttribute Submenu submenu,HttpServletRequest request){
		int flag = submenuService.updateSubmenuById(submenu);
		return new ModelAndView(new RedirectView(request.getContextPath()+"/submenu?admin"));
	}
}
