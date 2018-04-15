package com.tdshop.service;

import java.util.Collections;
import java.util.List;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tdshop.dao.ProductDAO;
import com.tdshop.model.Product;
import com.tdshop.model.Supplier;

@Transactional
@Service
public class ProductService {
	@Autowired
	ProductDAO dao;
	
	public void insert(Product entity) {
		dao.insert(entity);
	}
	public void update(Product entity) {
		dao.update(entity);
	}
	public void delete(Product entity) {
		dao.delete(entity);
	}
	public void refresh(Product entity) {
		dao.refresh(entity);
	}
	public List<Product> list() {
		return dao.list();
	}
	public Product get(Integer id) {
		Product p = dao.get(id);
		Hibernate.initialize(p.getCategory().getProducts());
		Hibernate.initialize(p.getSupplier().getProducts());
		return p;
	}
	public List<Product> listByCategory(Integer id) {
		return dao.listByCategory(id);
	}
	public List<Product> listBySupplier(String id) {
		return dao.listBySupplier(id);
	}
	public List<Product> listBySpecial(String id) {
		return dao.listBySpecial(id);
	}
	public List<Product> search(String keywords) {
		return dao.search(keywords);
	}
	public List<Product> getViewProducts(String ids) {
		return dao.getViewProducts(ids);
	}
	public List<Product> getPage(int pageNo, int pageSize) {
		return dao.getPage(pageNo, pageSize);
	}
	public List<Product> getProduct() {
		List<Product> all =dao.list();
		Collections.shuffle(all);
		List<Product> pro6=all.subList(0,7);
		return pro6;
	}
	public List<Object[]> revenueByProduct1(Integer id) {
		return dao.revenueByProduct1(id);
	}
	public List<Object[]> revenueByProduct2(Integer id) {
		return dao.revenueByProduct2(id);
	}
}
