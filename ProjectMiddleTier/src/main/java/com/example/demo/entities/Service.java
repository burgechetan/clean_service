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
@Table(name="services")
public class Service 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int s_id;
		
	@Column
	String s_name;
	
	@Column
	String description;
	
	@Column
	String duration;
	
	@Column
	double cost;
	
	@OneToOne
	@JoinColumn(name="sp_id")
	private ServiceProvider sp_id;

	public int getS_id() {
		return s_id;
	}

	public void setS_id(int s_id) {
		this.s_id = s_id;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public ServiceProvider getSp_id() {
		return sp_id;
	}

	public void setSp_id(ServiceProvider sp_id) {
		this.sp_id = sp_id;
	}
	
	
}
