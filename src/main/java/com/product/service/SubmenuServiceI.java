package com.product.service;

import java.util.List;

import com.product.model.Submenu;

public interface SubmenuServiceI {
	List<Submenu> queryAllSubmenu();
	List<Submenu> queryAllSubmenuWithProduct();
	Submenu querySubmenuById(Integer id);
	int queryCount();
	int updateSubmenuById(Submenu submenu);
	int deleteSubmenuById(Integer id);
	
	int insertSubmenu(Submenu submenu);
}
