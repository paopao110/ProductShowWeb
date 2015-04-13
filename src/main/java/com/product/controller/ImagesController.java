package com.product.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.product.model.Images;
import com.product.service.ImagesServiceI;
import com.product.service.ProductServiceI;
import com.product.util.GlobleVariables;
import com.product.util.TimerString;

@Controller
public class ImagesController {
	
	@Autowired
	private ImagesServiceI imagesService;
	@Autowired
	private ProductServiceI productService;
	
	@RequestMapping(value="{pId}/addImagePage",params="admin")
	public ModelAndView LinkAddImages(@PathVariable int pId,HttpServletRequest request){
		request.setAttribute("imagePage", true);
		request.setAttribute("pid", pId);
		return new ModelAndView("admin/form");
	}
	
	@RequestMapping(value="addImage",params="admin",method=RequestMethod.POST)
	public ModelAndView AddImages(@ModelAttribute Images image,@RequestParam("doc") MultipartFile doc,
			HttpServletRequest request) throws IllegalStateException, IOException{
		if(!doc.isEmpty()){
			ServletContext sc = request.getSession().getServletContext();
			String realpath = sc.getRealPath("/upload");
			String imageName = TimerString.getCurrentTime(false)+".jpg";
			File savefile = new File(new File(realpath),imageName);
            if (!savefile.getParentFile().exists())
                savefile.getParentFile().mkdirs();

			doc.transferTo(savefile);//save file
			image.setiUrl(imageName);
		}
		
		int flag = imagesService.insertImages(image);
		if(flag>0){
			request.setAttribute("message", GlobleVariables.ADD_INFO_SUCCESS);
		}else{
			request.setAttribute("message", GlobleVariables.ADD_INFO_FAILURE);
		}
		List<Images> list = imagesService.queryImagesByPaging(image.getpId(), 0,6, true);
		request.setAttribute("imagesList", list);
		return new ModelAndView("admin/gallery");
	}
}
