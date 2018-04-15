package com.tdshop.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tdshop.model.Order;
import com.tdshop.model.Product;

@Repository
public class OrderDAOImpl implements OrderDAO{
	@Autowired
	SessionFactory factory;

	@Override
	public void insert(Order entity) {
		factory.getCurrentSession().save(entity);
	}

	@Override
	public void update(Order entity) {
		factory.getCurrentSession().update(entity);
	}

	@Override
	public void delete(Order entity) {
		factory.getCurrentSession().delete(entity);
	}

	@Override
	public void refresh(Order entity) {
		factory.getCurrentSession().refresh(entity);
	}

	@Override
	public List<Order> list() {
		String hql = "FROM Order";
		Query query= factory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Override
	public Order get(Integer id) {
		return (Order) factory.getCurrentSession().get(Order.class, id);
	}

	@Override
	public List<Order> listByUser(String id) {
		String hql = "FROM Order WHERE customer.id=:cid";
		Query query= factory.getCurrentSession().createQuery(hql);
		query.setParameter("cid", id);
		return query.list();
	}
}
