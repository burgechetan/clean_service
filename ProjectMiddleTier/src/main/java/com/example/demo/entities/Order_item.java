package com.example.demo.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
 
@Entity
@Table(name="order_items")
public class Order_item 
{
	@Id 
	@GeneratedValue(strategy=GenerationType.IDENTITY )
	private int oi_id;
	
	@ManyToOne
	@JoinColumn(name="o_id")
	private Order o_id;
	
	@OneToOne
	@JoinColumn(name="sp_id")
	private ServiceProvider sp_id;
	
	@OneToOne
	@JoinColumn(name="s_id")
	private Service s_id;
	
	@OneToOne
	@JoinColumn(name="status_id")
	private Status status_id;

	public int getOi_id() {
		return oi_id;
	}

	public void setOi_id(int oi_id) {
		this.oi_id = oi_id;
	}

	public Order getOrder_id() {
		return o_id;
	}

	public void setOrder_id(Order order_id) {
		this.o_id = order_id;
	}

	public Service getS_id() {
		return s_id;
	}

	public void setS_id(Service s_id) {
		this.s_id = s_id;
	}

	public ServiceProvider getSp_id() {
		return sp_id;
	}

	public void setSp_id(ServiceProvider sp_id) {
		this.sp_id = sp_id;
	}

	public Status getStatus_id() {
		return status_id;
	}

	public void setStatus_id(Status status_id) {
		this.status_id = status_id;
	}
	
	
}