package com.tdshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tdshop.dao.CustomerDAO;
import com.tdshop.model.Customer;

@Transactional
@Service
public class CustomerService {
	@Autowired
	CustomerDAO dao;
	
	public void insert(Customer entity) {
		dao.insert(entity);
	}
	public void update(Customer entity) {
		dao.update(entity);
	}
	public void delete(Customer entity) {
		dao.delete(entity);
	}
	public void refresh(Customer entity) {
		dao.refresh(entity);
	}
	public List<Customer> list() {
		return dao.list();
	}
	public Customer get(String id) {
		return dao.get(id);
	}
}
