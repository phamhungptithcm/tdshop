package com.tdshop.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tdshop.model.Supplier;

@Repository
public class SupplierDAOImpl implements SupplierDAO{
	@Autowired
	SessionFactory factory;

	@Override
	public void insert(Supplier entity) {
		factory.getCurrentSession().save(entity);
	}

	@Override
	public void update(Supplier entity) {
		factory.getCurrentSession().update(entity);
	}

	@Override
	public void delete(Supplier entity) {
		factory.getCurrentSession().delete(entity);
	}

	@Override
	public void refresh(Supplier entity) {
		factory.getCurrentSession().refresh(entity);
	}

	@Override
	public List<Supplier> list() {
		String hql = "FROM Supplier";
		Query query= factory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Override
	public Supplier get(String id) {
		return (Supplier) factory.getCurrentSession().get(Supplier.class, id);
	}
	
}
