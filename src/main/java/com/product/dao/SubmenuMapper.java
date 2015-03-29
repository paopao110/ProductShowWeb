package com.product.dao;

import java.util.List;

import com.product.model.Submenu;

public interface SubmenuMapper {
    int deleteByPrimaryKey(Integer sId);
    int insert(Submenu record);
    Submenu selectByPrimaryKey(Integer sId);
    int updateByPrimaryKey(Submenu record);
    List<Submenu> selectAllSubmenu();
}