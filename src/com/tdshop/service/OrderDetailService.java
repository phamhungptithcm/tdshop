package com.tdshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tdshop.dao.OrderDetailDAO;
import com.tdshop.model.OrderDetail;
import com.tdshop.model.Product;

@Transactional
@Service
public class OrderDetailService {
	@Autowired
	OrderDetailDAO dao;
	
	public void insert(OrderDetail entity) {
		dao.insert(entity);
	}
	public void update(OrderDetail entity) {
		dao.update(entity);
	}
	public void delete(OrderDetail entity) {
		dao.delete(entity);
	}
	public void refresh(OrderDetail entity) {
		dao.refresh(entity);
	}
	public List<OrderDetail> list() {
		return dao.list();
	}
	public OrderDetail get(Integer id) {
		return dao.get(id);
	}
}
