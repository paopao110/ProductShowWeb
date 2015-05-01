package com.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@RequestMapping("/index")
	public ModelAndView linkIndex(HttpServletRequest request){
		List<Patent> patents = patentService.queryPatentByPaging(0, 3);
		request.setAttribute("patents", patents);
		List<Product> listProduct = productService.queryProductByPaging(0, 5);
		request.setAttribute("listProduct", listProduct);
		return new ModelAndView("front/index");
	}
	
	@RequestMapping("/about")
	public ModelAndView linkAbout(){
		return new ModelAndView("front/about");
	}
	
	@RequestMapping("/product")
	public ModelAndView linkProduct(HttpServletRequest request){
		int pno = fetchCurrentPager(request.getParameter("pno"));
		List<Submenu> list = submenuService.queryAllSubmenuWithProduct();
		List<Product> listProduct = null;
		String sId = request.getParameter("submenuId");
		if(StringUtils.isNullOrEmpty(sId)){
			 listProduct = productService.queryProductByPaging((pno-1)*3, 3);
		}else{
			Integer sid = Integer.valueOf(sId);
			listProduct = productService.productsBysId(sid,(pno-1)*3, 3);
		}
		
		request.setAttribute("submenus", list);
		request.setAttribute("listProduct", listProduct);
		return new ModelAndView("front/product");
	}
	
	@RequestMapping("{pid}/product_full")
	public ModelAndView linkProductFull(@PathVariable int pid,HttpServletRequest request){
		Product product = productService.queryProductById(Integer.valueOf(pid));
		List<Images> listImages = imagesService.queryImagesByPaging(pid, 0, 6, true);
		List<Submenu> list = submenuService.queryAllSubmenuWithProduct();
		request.setAttribute("product", product);
		request.setAttribute("listImages", listImages);
		request.setAttribute("submenus", list);
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
	
	@RequestMapping(value="fetchFrontProductCount")
	public @ResponseBody Integer fetchfrontMessageCount(HttpServletRequest request){
		String submenuid = request.getParameter("submenuId");
		System.out.println("==============="+submenuid);
		if(submenuid != null){
			return productService.queryCountWithSubmenu(Integer.parseInt(submenuid));
		}
		return productService.queryCount();
	}
}
