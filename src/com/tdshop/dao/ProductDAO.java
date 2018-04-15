package com.tdshop.dao;

import java.util.List;

import com.tdshop.model.Product;

public interface ProductDAO {
	public void insert(Product entity);
	public void update(Product entity);
	public void delete(Product entity);
	public void refresh(Product entity);
	public List<Product> list();
	public Product get(Integer id);
	public List<Product> search(String keywords);
	public List<Product> getViewProducts(String ids);
	public List<Product> listBySpecial(String id);
	public List<Product> listBySupplier(String id);
	public List<Product> listByCategory(Integer id);
	public List<Object[]> revenueByProduct1(Integer id);
	public List<Object[]> revenueByProduct2(Integer id);
	public List<Product> getPage(int pageNo, int pageSize);
}
