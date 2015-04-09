package com.product.dao;

import java.util.List;

import com.product.model.Submenu;

public interface SubmenuMapper {
    int deleteByPrimaryKey(Integer sId);
    int insert(Submenu record);
    int updateByPrimaryKey(Submenu record);
    
    Submenu selectByPrimaryKey(Integer sId);
    int selectCount();
    List<Submenu> selectAllSubmenu();
}