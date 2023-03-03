package com.example.demo.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="payments")
public class Payment 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY )
	private int p_id;

	@OneToOne
	@JoinColumn(name="o_id")
	private Order o_id;
	
	@OneToOne
	@JoinColumn(name="c_id")
	private Customer c_id;
	
	@Column
	private double charges;
	
	@Column
	private double discount;

	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public Order getO_id() {
		return o_id;
	}

	public void setO_id(Order o_id) {
		this.o_id = o_id;
	}

	public Customer getC_id() {
		return c_id;
	}

	public void setC_id(Customer c_id) {
		this.c_id = c_id;
	}

	public double getCharges() {
		return charges;
	}

	public void setCharges(double charges) {
		this.charges = charges;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}
}
