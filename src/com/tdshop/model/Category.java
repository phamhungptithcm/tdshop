package com.tdshop.model;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="categories")
public class Category {
	@Id
	@GeneratedValue
	Integer id;
	String nameVN;
	String name;
	
	@OneToMany(mappedBy="category")
	List<Product> products;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNameVN() {
		return nameVN;
	}

	public void setNameVN(String nameVN) {
		this.nameVN = nameVN;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}
	
}
