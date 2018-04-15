package com.tdshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tdshop.dao.TechnicalParamDAO;
import com.tdshop.model.TechnicalParam;

@Transactional
@Service
public class TechnicalParamService {
	@Autowired
	TechnicalParamDAO dao;
	
	public void insert(TechnicalParam entity) {
		dao.insert(entity);
	}
	public void update(TechnicalParam entity) {
		dao.update(entity);
	}
	public void delete(TechnicalParam entity) {
		dao.delete(entity);
	}
	public void refresh(TechnicalParam entity) {
		dao.refresh(entity);
	}
	public List<TechnicalParam> list() {
		return dao.list();
	}
	public TechnicalParam get(Integer id) {
		return dao.get(id);
	}
}
