package com.example.demo.entities;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity 
@Table(name="orders")
public class Order 
{
	@Id							
	@GeneratedValue(strategy = GenerationType.IDENTITY )
	private int o_id;
	
    @JsonIgnore
	@OneToMany(mappedBy = "oi_id")
	private Set<Order_item> order_items;
	
	@ManyToOne
	@JoinColumn(name="c_id")
	private Customer c_id;
	
	@Column
	@JsonFormat(pattern = "yyyy-mm-dd")
	private Date order_date;
	
	public Order()
	{
		
	}

	public int getO_id() {
		return o_id;
	}

	public void setO_id(int o_id) {
		this.o_id = o_id;
	}

	public Set<Order_item> getOrder_items() {
		return order_items;
	}

	public void setOrder_items(Set<Order_item> order_items) {
		for(Order_item oi : order_items)
			oi.setOrder_id(this);
			
		this.order_items = order_items;
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
