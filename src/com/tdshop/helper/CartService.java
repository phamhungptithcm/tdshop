package com.tdshop.helper;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.tdshop.model.Product;
import com.tdshop.service.ProductService;

//scopedTarget.cartService
@Service
@SessionScope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CartService {
	@Autowired
	ProductService productService;

	HashMap<Integer, CartItem> cartItems = new HashMap<>();
	
	public void addItemToCart(Integer id) {
		CartItem item = cartItems.get(id);
		if(item != null) {
			item.setQuantity(item.getQuantity()+1);
		}
		else {
			Product p = productService.get(id);
			item = new CartItem();
			item.setId(p.getId());
			item.setName(p.getName());
			item.setUnitPrice(p.getUnitPrice());
			item.setDiscount(p.getDiscount());
			item.setQuantity(1);
			
			cartItems.put(id, item);
		}
	}
	public void removeItem(Integer id) {
		cartItems.remove(id);
	}
	public void clear() {
		cartItems.clear();
	}
	public void updateItem(Integer id, int newQuantity) {
		CartItem item = cartItems.get(id);
		item.setQuantity(newQuantity);
	}
	public Collection<CartItem> getItem() {
		return cartItems.values();
	}
	public int getCount() {
		int count = 0;
		for(CartItem item : getItem()) {
			count +=item.getQuantity();
		}
		return count;
	}
	public double getAmount() {
		double amount = 0;
		for (CartItem item : getItem()) {
			amount+=item.getAmount();
		}
		return amount;
	}
}
