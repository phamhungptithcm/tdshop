package com.tdshop.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tdshop.model.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO{
	@Autowired
	SessionFactory factory;

	@Override
	public void insert(Customer entity) {
		factory.getCurrentSession().save(entity);
	}

	@Override
	public void update(Customer entity) {
		factory.getCurrentSession().update(entity);
	}

	@Override
	public void delete(Customer entity) {
		factory.getCurrentSession().delete(entity);
	}

	@Override
	public void refresh(Customer entity) {
		factory.getCurrentSession().refresh(entity);
	}

	@Override
	public List<Customer> list() {
		String hql = "FROM Customer";
		Query query= factory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Override
	public Customer get(String id) {
		return (Customer) factory.getCurrentSession().get(Customer.class, id);
	}
	
}
