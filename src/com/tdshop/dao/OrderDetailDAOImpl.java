package com.tdshop.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tdshop.model.OrderDetail;
import com.tdshop.model.Product;

@Repository
public class OrderDetailDAOImpl implements OrderDetailDAO{
	@Autowired
	SessionFactory factory;

	@Override
	public void insert(OrderDetail entity) {
		factory.getCurrentSession().save(entity);
	}
	@Override
	public void update(OrderDetail entity) {
		factory.getCurrentSession().update(entity);
	}
	@Override
	public void delete(OrderDetail entity) {
		factory.getCurrentSession().delete(entity);
	}
	@Override
	public void refresh(OrderDetail entity) {
		factory.getCurrentSession().refresh(entity);
	}
	@Override
	public List<OrderDetail> list() {
		String hql = "FROM OrderDetail";
		Query query= factory.getCurrentSession().createQuery(hql);
		return query.list();
	}
	@Override
	public OrderDetail get(Integer id) {
		return (OrderDetail) factory.getCurrentSession().get(OrderDetail.class, id);
	}
	public List<Product> getPurchasedItemsofUser(String id) {
		String hql = "SELECT DISTINCT d.product FROM OrderDetail d "
				+ " WHERE d.order.customer.id=:cid";
		Query query= factory.getCurrentSession().createQuery(hql);
		query.setParameter("cid", id);
		return query.list();
	}
}
