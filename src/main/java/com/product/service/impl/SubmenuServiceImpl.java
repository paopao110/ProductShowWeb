package com.product.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.dao.SubmenuMapper;
import com.product.model.Submenu;
import com.product.service.SubmenuServiceI;

@Service
public class SubmenuServiceImpl implements SubmenuServiceI{

	private SubmenuMapper submenuMapper;
	@Autowired
	public SubmenuServiceImpl(SubmenuMapper _submenuMapper){
		this.submenuMapper = _submenuMapper;
	}
	
	public List<Submenu> queryAllSubmenu() {
		return submenuMapper.selectAllSubmenu();
	}

	public Submenu querySubmenuById(Integer id) {
		return submenuMapper.selectByPrimaryKey(id);
	}

	public int updateSubmenuById(Submenu submenu) {
		return submenuMapper.updateByPrimaryKey(submenu);
	}

	public int deleteSubmenuById(Integer id) {
		return submenuMapper.deleteByPrimaryKey(id);
	}

	public int insertSubmenu(Submenu submenu) {
		return submenuMapper.insert(submenu);
	}

}
