package com.product.controller;

import java.util.List;

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
		getSubmenu(request);
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
	
	@RequestMapping(value="{pId}/viewProduct",params="admin")
	public ModelAndView viewProduct(@PathVariable int pId,HttpServletRequest request){
		Product product = productService.queryProductById(pId);
		request.setAttribute("product", product);
		getSubmenu(request);
		return new ModelAndView("admin/modify");
	}
	
	@RequestMapping(value="updateProduct",params="admin",method=RequestMethod.POST)
	public ModelAndView updateProduct(@ModelAttribute Product product,HttpServletRequest request){
		if(product!=null){
			productService.updateProductById(product);
		}
		return new ModelAndView(new RedirectView(request.getContextPath()+"/product?admin"));
	}
	
	@RequestMapping(value="{pId}/deleteProduct",params="admin")
	public @ResponseBody Boolean deleteProduct(@PathVariable int pId){
		int flag = productService.deleteProductById(pId);
		if(flag>0){
			return true;
		}
		return false;
	}
	
	private void getSubmenu(HttpServletRequest request){
		List<Submenu> list = submenuService.queryAllSubmenu();
		request.setAttribute("submenus",list);
	}
}
