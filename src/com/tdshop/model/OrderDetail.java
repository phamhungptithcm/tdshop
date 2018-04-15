package com.tdshop.model;

import javax.persistence.*;

@Entity
@Table(name="orderDetails")
public class OrderDetail {
	@Id
	@GeneratedValue
	Integer id;
	Double unitPrice;
	Integer quantity;
	Double discount;
	
	@ManyToOne
	@JoinColumn(name="orderId")
	Order order;
	
	@ManyToOne
	@JoinColumn(name="productId")
	Product product;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
	
}
