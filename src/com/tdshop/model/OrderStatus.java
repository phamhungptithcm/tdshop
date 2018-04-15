package com.tdshop.model;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="orderStatuses")
public class OrderStatus {
	@Id
	@GeneratedValue
	Integer id;
	String name;
	String nameVN;
	
	@OneToMany(mappedBy="orderStatus")
	List<Order> orders;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNameVN() {
		return nameVN;
	}

	public void setNameVN(String nameVN) {
		this.nameVN = nameVN;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}
	
}
