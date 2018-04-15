package com.tdshop.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tdshop.controller.TDShopController;
import com.tdshop.service.ReportService;

@Controller
@RequestMapping("admin/revenue")
public class RevenueController extends TDShopController {
	@Autowired
	ReportService reportService;
	
	@RequestMapping("by-category")
	public String revenueByCategory(Model model) {
		model.addAttribute("group", "Loại");
		model.addAttribute("items", reportService.revenueByCategory());
		return admin("report/revenue.jsp");
	}
	
	@RequestMapping("by-supplier")
	public String revenueBySupplier(Model model) {
		model.addAttribute("group", "hãng sản xuất");
		model.addAttribute("items", reportService.revenueBySupplier());
		return admin("report/revenue.jsp");
	}
	
	@RequestMapping("by-product")
	public String revenueByProduct(Model model) {
		model.addAttribute("group", "sản phẩm");
		model.addAttribute("items", reportService.revenueByProduct());
		return admin("report/revenue.jsp");
	}
	
	@RequestMapping("by-customer")
	public String revenueByCustomer(Model model) {
		model.addAttribute("group", "khách hàng");
		model.addAttribute("items", reportService.revenueByCustomer());
		return admin("report/revenue.jsp");
	}
	
	@RequestMapping("by-year")
	public String revenueByYear(Model model) {
		model.addAttribute("group", "năm");
		model.addAttribute("items", reportService.revenueByYear());
		return admin("report/revenue.jsp");
	}
	
	@RequestMapping("by-quarter")
	public String revenueByQuarter(Model model) {
		model.addAttribute("group", "quý");
		model.addAttribute("items", reportService.revenueByQuarter());
		return admin("report/revenue.jsp");
	}
	
	@RequestMapping("by-month")
	public String revenueByMonth(Model model) {
		model.addAttribute("group", "tháng");
		model.addAttribute("items", reportService.revenueByMonth());
		return admin("report/revenue.jsp");
	}
}
