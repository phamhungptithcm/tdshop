package com.tdshop.dao;

import java.util.List;

import com.tdshop.model.Supplier;

public interface SupplierDAO {
	public void insert(Supplier entity);
	public void update(Supplier entity);
	public void delete(Supplier entity);
	public void refresh(Supplier entity);
	public List<Supplier> list();
	public Supplier get(String id);
}
