package com.product.service;

import java.util.List;

import com.product.model.Images;

public interface ImagesServiceI {
	int insertImages(Images images);
	int deleteImagesById(Integer id);
	int updateImagesById(Images images);
	/**
	 * 
	 * @param id	当flag=false时id为News中的id，当flag=true时id为Product中的id
	 * @param begin	开始位置
	 * @param number	查询个数
	 * @param flag	当flag=false时查询的是新闻中的图片信息，当flag=true时查询的事产品中的图片
	 * @return
	 */
	List<Images> queryImagesByPaging(Integer id,Integer begin,Integer number,boolean flag);
	Images queryImagesById(Integer id);
}
