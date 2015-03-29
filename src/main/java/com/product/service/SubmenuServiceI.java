package com.product.service;

import java.util.List;

import com.product.model.Submenu;

public interface SubmenuServiceI {
	List<Submenu> queryAllSubmenu();
	Submenu querySubmenuById(Integer id);
	
	int updateSubmenuById(Submenu submenu);
	int deleteSubmenuById(Integer id);
	
	int insertSubmenu(Submenu submenu);
}
