package com.product.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.product.model.Admin;
import com.product.service.AdminServiceI;
import com.product.util.GlobleVariables;

@Controller
public class AdminController {
	
	@Autowired
	private AdminServiceI adminService;
	
	@RequestMapping(value="/modifypass",params="admin",method=RequestMethod.POST)
	public ModelAndView modifyPassword(@ModelAttribute Admin admin,HttpServletRequest request){
		if(admin.getaName().trim().length()>0){
			int flag = adminService.updateAdminByName(admin);
			if(flag>0){
				request.setAttribute("modifyPassInfo", GlobleVariables.UPDATE_INFO_SUCCESS);
			}else{
				request.setAttribute("modifyPassInfo", GlobleVariables.UPDATE_INFO_FAILURE);
			}
		}
		return new ModelAndView("admin/modify"); 
	}
}
