package com.product.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.ImagesMapper;
import com.product.model.Images;
import com.product.service.ImagesServiceI;

@Service
public class ImagesServiceImpl implements ImagesServiceI{

	private ImagesMapper imagesMapper;
	@Autowired
	public ImagesServiceImpl(ImagesMapper _imagesMapper){
		this.imagesMapper = _imagesMapper;
	}
	
	public int insertImages(Images images) {
		return imagesMapper.insertSelective(images);
	}

	public int deleteImagesById(Integer id) {
		return imagesMapper.deleteByPrimaryKey(id);
	}

	public int updateImagesById(Images images) {
		return imagesMapper.updateByPrimaryKeySelective(images);
	}

	public List<Images> queryImagesByPaging(Integer id,Integer begin, Integer number,boolean flag) {
		if(flag){
			return imagesMapper.selectByPagingWithPID(id, begin, number);
		}else{
			return imagesMapper.selectByPagingWithNID(id, begin, number);
		}
	}

	public Images queryImagesById(Integer id) {
		return imagesMapper.selectByPrimaryKey(id);
	}

}
