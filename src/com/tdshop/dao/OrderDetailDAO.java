package com.tdshop.dao;

import java.util.List;

import com.tdshop.model.OrderDetail;
import com.tdshop.model.Product;

public interface OrderDetailDAO {
	public void insert(OrderDetail entity);
	public void update(OrderDetail entity);
	public void delete(OrderDetail entity);
	public void refresh(OrderDetail entity);
	public List<OrderDetail> list();
	public OrderDetail get(Integer id);
	public List<Product> getPurchasedItemsofUser(String id);
}
