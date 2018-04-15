package com.tdshop.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tdshop.controller.TDShopController;
import com.tdshop.service.ReportService;

@Controller("adminHomeController")
@RequestMapping("admin/home")
public class HomeController extends TDShopController {
	@Autowired
	ReportService reportService;

	@RequestMapping("index")
	public String index(Model model) {
		model.addAttribute("items", reportService.inventoryByCategory());
		return admin("home/index.jsp");
	}
}
