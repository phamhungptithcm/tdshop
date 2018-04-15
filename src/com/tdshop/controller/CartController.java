package com.tdshop.controller;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tdshop.dao.ProductDAO;
import com.tdshop.helper.CartItem;
import com.tdshop.helper.CartService;
import com.tdshop.model.Order;
import com.tdshop.model.Product;
import com.tdshop.service.OrderStatusService;
import com.tdshop.service.ProductService;

@Controller
@RequestMapping("cart")
public class CartController extends TDShopController {
	@Autowired
	CartService cartService;
	
	@ResponseBody
	@RequestMapping("add")
	public String add(@RequestParam("id") Integer id) {
		cartService.addItemToCart(id);
		return String.format("{\"count\":%d, \"amount\":%.3f}",
				cartService.getCount(), cartService.getAmount());
	}
	@ResponseBody
	@RequestMapping("remove")
	public String remove(@RequestParam("id") Integer id) {
		cartService.removeItem(id);
		return String.format("{\"count\":%d, \"amount\":%.3f}", 
					cartService.getCount(), cartService.getAmount());
	}
	@ResponseBody
	@RequestMapping("update")
	public String update(
			@RequestParam("id") Integer id, 
			@RequestParam("qty") Integer qty) {
		cartService.updateItem(id, qty);
		return String.format("{\"count\":%d, \"amount\":%.3f}", 
					cartService.getCount(), cartService.getAmount());
	}
	@RequestMapping("gio-hang")
	public String view() {
		return user("cart/giohang.jsp");
	}
}

