package com.tdshop.service;

import java.util.Collections;
import java.util.List;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tdshop.dao.ProductDAO;
import com.tdshop.dao.SupplierDAO;
import com.tdshop.model.Product;
import com.tdshop.model.Supplier;

@Transactional
@Service
public class SupplierService {
	@Autowired
	SupplierDAO dao;
	
	public void insert(Supplier entity) {
		dao.insert(entity);
	}
	public void update(Supplier entity) {
		dao.update(entity);
	}
	public void delete(Supplier entity) {
		dao.delete(entity);
	}
	public void refresh(Supplier entity) {
		dao.refresh(entity);
	}
	public List<Supplier> list() {
		return dao.list();
	}
	public Supplier get(String id) {
		return dao.get(id);
	}
	public List<Supplier> get4Supplier() {
		List<Supplier> all =dao.list();
		Collections.shuffle(all);
		List<Supplier> sub4=all.subList(0,8);
		for (Supplier s : sub4) {
			List<Product> list = s.getProducts();
			Hibernate.initialize(list);
		}
		return sub4;
	}
}
