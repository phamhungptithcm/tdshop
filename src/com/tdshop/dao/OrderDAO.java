package com.tdshop.dao;

import java.util.List;

import com.tdshop.model.Order;

public interface OrderDAO {
	public void insert(Order entity);
	public void update(Order entity);
	public void delete(Order entity);
	public void refresh(Order entity);
	public List<Order> list();
	public Order get(Integer id);
	public List<Order> listByUser(String id);
}
