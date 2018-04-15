package com.tdshop.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tdshop.model.TechnicalParam;

@Repository
public class TechnicalParamDAOImpl implements TechnicalParamDAO{
	@Autowired
	SessionFactory factory;

	@Override
	public void insert(TechnicalParam entity) {
		factory.getCurrentSession().save(entity);
	}

	@Override
	public void update(TechnicalParam entity) {
		factory.getCurrentSession().update(entity);
	}

	@Override
	public void delete(TechnicalParam entity) {
		factory.getCurrentSession().delete(entity);
	}

	@Override
	public void refresh(TechnicalParam entity) {
		factory.getCurrentSession().refresh(entity);
	}

	@Override
	public List<TechnicalParam> list() {
		String hql = "FROM TechnicalParam";
		Query query= factory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	@Override
	public TechnicalParam get(Integer id) {
		return (TechnicalParam) factory.getCurrentSession().get(TechnicalParam.class, id);
	}
	
}
