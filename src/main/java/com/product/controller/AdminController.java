package com.product.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.product.model.Admin;
import com.product.service.AdminServiceI;
import com.product.util.GlobleVariables;

@Controller
public class AdminController {
	
	@Autowired
	private AdminServiceI adminService;
	
	@RequestMapping("/login")
	public String linkLogin(HttpServletResponse response,HttpServletRequest request)
			throws Exception{
		response.sendRedirect(request.getContextPath()+"/login.jsp");
		return null;
	}
	
	@RequestMapping(value="/modifypass",params="admin",method=RequestMethod.POST)
	public ModelAndView modifyPassword(@ModelAttribute Admin admin,HttpServletRequest request){
		String username = admin.getaName();
		String passwd = adminService.queryAdminByName(username).getaPasswd();
		if(passwd.equals(admin.getaPasswd())){
			String newpassowrd = admin.getnPasswd();
			if(newpassowrd.equals(admin.getRnPasswd())){
				admin.setaPasswd(newpassowrd);
				int flag = adminService.updateAdminByName(admin);
				if(flag>0){
					request.setAttribute("modifyPassInfo", GlobleVariables.UPDATE_INFO_SUCCESS);
				}else{
					request.setAttribute("modifyPassInfo", GlobleVariables.UPDATE_INFO_FAILURE);
				}
			}else{
				request.setAttribute("modifyPassInfo", GlobleVariables.PASSWORD_ERROR_2);
			}
		}else{
			request.setAttribute("modifyPassInfo", GlobleVariables.PASSWORD_ERROR_1);
		}
		return new ModelAndView("admin/modify"); 
	}
	
	@RequestMapping(value="/checklogin",method=RequestMethod.POST)
	public ModelAndView login(@ModelAttribute Admin admin,HttpServletRequest request){
		String password = adminService.queryAdminByName(admin.getaName()).getaPasswd();
		RedirectView review = new RedirectView(request.getContextPath()+"/home?admin");
		if(password.equals(admin.getaPasswd())){
			request.getSession().setAttribute("SESSIONUSERNAME", admin.getaName());
		}else{
			review = new RedirectView(request.getContextPath()+"/login");
		}	
		return new ModelAndView(review); 
	}
	
	@RequestMapping(value="/logout")
	public ModelAndView logout(HttpServletRequest request){
		request.getSession().removeAttribute("SESSIONUSERNAME");
		return new ModelAndView(new RedirectView(request.getContextPath()+"/login")); 
	}
}
