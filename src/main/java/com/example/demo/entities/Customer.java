package com.example.demo.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="customers")
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int c_id;
	
	@Column
	private String f_name;
	
	@Column
	private String l_name;
	
	@OneToOne
	@JoinColumn(name="login_id")
	private Login login_id;
	
	@JsonIgnoreProperties("o_id")
	@OneToMany(mappedBy = "o_id",cascade = CascadeType.ALL)
	private List<Order> olist =new ArrayList<Order>();
	
	
	public Customer() 
	{
		
	}

	public Customer( String f_name, String l_name, Login login_id) {
		super();
		
		this.f_name = f_name;
		this.l_name = l_name;
		this.login_id = login_id;
	}
	
	public Customer(int id)
	{
		this.c_id=id;
	}

	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getL_name() {
		return l_name;
	}
	public void setL_name(String l_name) {
		this.l_name = l_name;
	}
	public Login getLogin() {
		return login_id;
	}
	public void setLogin(Login login) {
		this.login_id = login;
	}
}
