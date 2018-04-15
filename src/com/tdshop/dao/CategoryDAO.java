package com.tdshop.dao;

import java.util.List;

import com.tdshop.model.Category;

public interface CategoryDAO {
	public void insert(Category entity);
	public void update(Category entity);
	public void delete(Category entity);
	public void refresh(Category entity);
	public List<Category> list();
	public Category get(Integer id);
}
