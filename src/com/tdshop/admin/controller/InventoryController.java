package com.tdshop.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tdshop.controller.TDShopController;
import com.tdshop.service.ReportService;

@Controller
@RequestMapping("admin/inventory")
public class InventoryController extends TDShopController {
	@Autowired
	ReportService reportService;
	
	@RequestMapping("by-category")
	public String inventoryByCategory(Model model) {
		model.addAttribute("group", "Loại");
		model.addAttribute("items", reportService.inventoryByCategory());
		return admin("report/inventory.jsp");
	}
	
	@RequestMapping("by-supplier")
	public String inventoryBySupplier(Model model) {
		model.addAttribute("group", "hãng sản xuất");
		model.addAttribute("items", reportService.inventoryBySupplier());
		return admin("report/inventory.jsp");
	}
}
