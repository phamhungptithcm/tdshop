package com.tdshop.model;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="comments")
public class Comments {
	@Id
	String id;
	String sex;
	String email;
	String phone;
	String comment;
	String repply;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getRepply() {
		return repply;
	}
	public void setRepply(String repply) {
		this.repply = repply;
	}
	
	
	
	
}
