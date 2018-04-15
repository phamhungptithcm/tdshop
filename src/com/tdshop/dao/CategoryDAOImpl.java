package com.tdshop.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tdshop.model.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO{
	@Autowired
	SessionFactory factory;

	@Override
	public void insert(Category entity) {
		factory.getCurrentSession().save(entity);
	}

	@Override
	public void update(Category entity) {
		factory.getCurrentSession().update(entity);
	}

	@Override
	public void delete(Category entity) {
		factory.getCurrentSession().delete(entity);
	}

	@Override
	public void refresh(Category entity) {
		factory.getCurrentSession().refresh(entity);
	}

	@Override
	public List<Category> list() {
		String hql = "FROM Category";
		Query query= factory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Override
	public Category get(Integer id) {
		return (Category) factory.getCurrentSession().get(Category.class, id);
	}
	
}
