package com.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.jdbc.StringUtils;
import com.product.model.Images;
import com.product.model.Patent;
import com.product.model.Product;
import com.product.model.Submenu;
import com.product.service.ImagesServiceI;
import com.product.service.MessageServiceI;
import com.product.service.PatentServiceI;
import com.product.service.ProductServiceI;
import com.product.service.SubmenuServiceI;

@Controller
public class LinkController {
	
	@Autowired
	private MessageServiceI sessageService;
	@Autowired
	private SubmenuServiceI submenuService;
	@Autowired
	private ProductServiceI productService;
	@Autowired
	private PatentServiceI patentService;
	@Autowired
	private ImagesServiceI imagesService;
	private String submenuId;
	private String productId;
	
	@RequestMapping("/index")
	public ModelAndView linkIndex(){
		return new ModelAndView("front/index");
	}
	
	@RequestMapping("/about")
	public ModelAndView linkAbout(){
		return new ModelAndView("front/about");
	}
	
	@RequestMapping("/product")
	public ModelAndView linkProduct(HttpServletRequest request){
		List<Submenu> list = submenuService.queryAllSubmenu();
		List<Product> listProduct = null;
		String sId = request.getParameter("submenuId");
		if(StringUtils.isNullOrEmpty(sId)){
			 listProduct = productService.productsBysId(list.get(0).getsId());
		}else{
			 listProduct = productService.productsBysId(Integer.valueOf(sId));
		}
		
		request.setAttribute("submenus", list);
		request.setAttribute("listProduct", listProduct);
		return new ModelAndView("front/product");
	}
	
	@RequestMapping("/product_full")
	public ModelAndView linkProductFull(HttpServletRequest request){
		String pid = request.getParameter("productId");
		String sId = request.getParameter("submenuId");
		if(pid==null) return null;
//		if(sId == null) return null;
		Product product = productService.queryProductById(Integer.valueOf(pid));
		List<Images> listImages = imagesService.queryImagesByPaging(Integer.valueOf(pid), 0, 5, true);
//		Submenu submenu = submenuService.querySubmenuById(Integer.valueOf(sId));
		request.setAttribute("product", product);
		request.setAttribute("listImages", listImages);
//		request.setAttribute("submenu", submenu);
		return new ModelAndView("front/product_full");
	}
	
	@RequestMapping("/patent")
	public ModelAndView linkPatent(HttpServletRequest request){
		List<Patent> patents = patentService.queryPatentByPaging(0, 10000);
		request.setAttribute("patents", patents);
		return new ModelAndView("front/patent");
	}
	
	@RequestMapping("/contact")
	public ModelAndView linkContact(){
		return new ModelAndView("front/contact");
	}
	
	
	private int fetchCurrentPager(String pno){
		int currentNumber = 1;
		if(pno!=null&&pno.matches("\\d+")){
			currentNumber = Integer.parseInt(pno);
		}
		return currentNumber;
	}

	public String getSubmenuId() {
		return submenuId;
	}

	public void setSubmenuId(String submenuId) {
		this.submenuId = submenuId;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}
	
	
}
