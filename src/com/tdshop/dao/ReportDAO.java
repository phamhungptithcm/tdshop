package com.tdshop.dao;

import java.util.List;

public interface ReportDAO {
	public List<Object[]> inventoryByCategory();
	public List<Object[]> inventoryBySupplier();
	public List<Object[]> revenueByCategory();
	public List<Object[]> revenueBySupplier();
	public List<Object[]> revenueByProduct();
	public List<Object[]> revenueByCustomer();
	public List<Object[]> revenueByYear();
	public List<Object[]> revenueByMonth();
	public List<Object[]> revenueByQuarter();
}
