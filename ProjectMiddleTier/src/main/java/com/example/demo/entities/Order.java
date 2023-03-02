package com.example.demo.entities;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity 
@Table(name="/Orders")
public class Order 
{
	@Id							
	@GeneratedValue(strategy = GenerationType.IDENTITY )
	private int o_id;
	
	@OneToMany
	@JoinColumn(name="oi_id")
	private List<Order_item> order_items;
	
	@OneToOne
	@JoinColumn(name="c_id")
	private Customer c_id;
	
	@Column
	private Date order_date;

	public int getO_id() {
		return o_id;
	}

	public void setO_id(int o_id) {
		this.o_id = o_id;
	}

	public List<Order_item> getorder_items() {
		return order_items;
	}

	public void setorder_items(List<Order_item> items) {
		this.order_items = items;
	}

	public Customer getC_id() {
		return c_id;
	}

	public void setC_id(Customer c_id) {
		this.c_id = c_id;
	}

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}	
}
