package com.tdshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tdshop.service.ProductService;
import com.tdshop.service.SupplierService;

@Controller
@RequestMapping("home")
public class HomeController extends TDShopController{
	@Autowired
	ProductService productService;
	
	@Autowired
	SupplierService supplierService;
	@RequestMapping("index")
	public String index(Model model) {
		model.addAttribute("sup4", supplierService.get4Supplier());
		model.addAttribute("items", productService.list());
		return user("home/index.jsp");
	}
	@RequestMapping("Q&A")
	public String qAndA() {
		return user("home/q-a.jsp");
	}
	@RequestMapping("return-goods")
	public String returnGoods() {
		return user("home/returngoods.jsp");
	}
	@RequestMapping("transport")
	public String transport() {
		return user("home/transport.jsp");
	}
	@RequestMapping("about")
	public String about(Model model) {
		return user("home/about.jsp");
	}
}
