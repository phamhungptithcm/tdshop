package com.tdshop.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tdshop.model.OrderStatus;

@Repository
public class OrderStatusDAOImpl implements OrderStatusDAO{
	@Autowired
	SessionFactory factory;

	@Override
	public void insert(OrderStatus entity) {
		factory.getCurrentSession().save(entity);
	}

	@Override
	public void update(OrderStatus entity) {
		factory.getCurrentSession().update(entity);
	}

	@Override
	public void delete(OrderStatus entity) {
		factory.getCurrentSession().delete(entity);
	}

	@Override
	public void refresh(OrderStatus entity) {
		factory.getCurrentSession().refresh(entity);
	}

	@Override
	public List<OrderStatus> list() {
		String hql = "FROM OrderStatus";
		Query query= factory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Override
	public OrderStatus get(Integer id) {
		return (OrderStatus) factory.getCurrentSession().get(OrderStatus.class, id);
	}
	
}
