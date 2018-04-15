package com.tdshop.dao;

import java.util.List;

import com.tdshop.model.TechnicalParam;

public interface TechnicalParamDAO {
	public void insert(TechnicalParam entity);
	public void update(TechnicalParam entity);
	public void delete(TechnicalParam entity);
	public void refresh(TechnicalParam entity);
	public List<TechnicalParam> list();
	public TechnicalParam get(Integer id);
}
