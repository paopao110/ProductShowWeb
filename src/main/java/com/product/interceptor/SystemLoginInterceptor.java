package com.product.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.alibaba.fastjson.JSON;

public class SystemLoginInterceptor extends HandlerInterceptorAdapter{
	private static final String[] IGNORE_URI = {"admin"};
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		boolean isInterceptorUrl = false;
		//String url = request.getRequestURL().toString();
		String paramStr = JSON.toJSONString(request.getParameterNames());
		for(String str:IGNORE_URI){
			if(paramStr.contains(str)){
				isInterceptorUrl=true;
				break;
			}
		}
		
		if(isInterceptorUrl){
			Object username = request.getSession().getAttribute("SESSIONUSERNAME");
			if(username==null){
				response.sendRedirect(request.getContextPath()+"/login.jsp");
				return false; 
			}
		}
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}
}
