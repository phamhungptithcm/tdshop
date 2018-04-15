package com.tdshop.dao;

import java.util.List;

import com.tdshop.model.Customer;

public interface CustomerDAO {
	public void insert(Customer entity);
	public void update(Customer entity);
	public void delete(Customer entity);
	public void refresh(Customer entity);
	public List<Customer> list();
	public Customer get(String id);
}
