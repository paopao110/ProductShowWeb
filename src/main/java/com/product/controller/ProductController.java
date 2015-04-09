package com.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.product.model.Product;
import com.product.model.Submenu;
import com.product.service.ProductServiceI;
import com.product.service.SubmenuServiceI;

@Controller
public class ProductController {
	
	private SubmenuServiceI submenuService;
	private ProductServiceI productService;
	@Autowired
	public ProductController(SubmenuServiceI _submenuService,ProductServiceI _productService){
		this.submenuService = _submenuService;
		this.productService = _productService;
	}
	
	@RequestMapping(value="addProductPage",params="admin")
	public ModelAndView linkAddProduct(HttpServletRequest request){
		request.setAttribute("productPage", true);
		List<Submenu> list = submenuService.queryAllSubmenu();
		request.setAttribute("submenu",list);
		return new ModelAndView("admin/form");
	}
	
	@RequestMapping(value="addProduct",params="admin",method=RequestMethod.POST)
	public ModelAndView addProduct(@ModelAttribute Product product,HttpServletRequest request){
		if(product!=null){
			productService.insertProduct(product);
		}
		return new ModelAndView(new RedirectView(request.getContextPath()+"/product?admin"));
	}
	
	@RequestMapping(value="fetchProductCount",params="admin")
	public @ResponseBody Integer fetchMessageCount(){
		return productService.queryCount();
	}
}
