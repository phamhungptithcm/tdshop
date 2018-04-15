package com.tdshop.dao;

import java.util.List;

import com.tdshop.model.OrderStatus;

public interface OrderStatusDAO {
	public void insert(OrderStatus entity);
	public void update(OrderStatus entity);
	public void delete(OrderStatus entity);
	public void refresh(OrderStatus entity);
	public List<OrderStatus> list();
	public OrderStatus get(Integer id);
}
