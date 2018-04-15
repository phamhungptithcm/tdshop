package com.tdshop.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tdshop.helper.CartService;
import com.tdshop.model.Customer;
import com.tdshop.model.Order;
import com.tdshop.model.Product;
import com.tdshop.service.OrderService;
import com.tdshop.service.OrderStatusService;
import com.tdshop.service.ProductService;

@Controller
@RequestMapping("order")
public class OrderController extends TDShopController{
	@Autowired
	CartService cart;
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	OrderStatusService orderStatusService;
	
	@GetMapping("checkout")
	public String checkout(Model model) {
		Customer user = (Customer) session.getAttribute("user");
		
		Order order = new Order();
		order.setOrderDate(new Date());
		order.setCustomer(user);
		order.setAmount(cart.getAmount());
		order.setShipName(user.getFullname());
		order.setOrderStatus(orderStatusService.get(1));
		
		model.addAttribute("order", order);
		return user("order/checkout.jsp");
	}
	
	@PostMapping("checkout")
	public String checkout(Model model, Order order) {
		try {
			orderService.purchase(order);
			model.addAttribute("message", "Đặt hàng thành công!");
			cart.clear();
		} 
		catch (Exception e) {
			model.addAttribute("message", "Đặt hàng thất bại!");
		}
		return user("order/checkout.jsp");
	}
	
	@GetMapping("list")
	public String list(Model model) {
		Customer user = (Customer) session.getAttribute("user");
		
		model.addAttribute("orders", orderService.listByUser(user.getId()));
		return user("order/list.jsp");
	}
	
	@GetMapping("detail/{id}")
	public String detail(Model model, @PathVariable("id") Integer id) {
		model.addAttribute("order", orderService.get(id));
		return user("order/detail.jsp");
	}
	
	@PostMapping("cancel")
	public String cancel(Model model, @RequestParam("id") Integer id) {
		Order order = orderService.get(id);
		order.setOrderStatus(orderStatusService.get(5));
		orderService.update(order);
		
		model.addAttribute("order", order);
		return user("order/detail.jsp");
	}
	
	@GetMapping("items")
	public String getPurchasedItems(Model model) {
		Customer user = (Customer) session.getAttribute("user");
		List<Product> items = orderService.getPurchasedItemsofUser(user.getId());
		
		model.addAttribute("items", items);
		return user("product/list.jsp");
	}
}
