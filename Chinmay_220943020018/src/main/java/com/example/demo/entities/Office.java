package com.example.demo.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="offices")
public class Office 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int officecode; 
	@Column
	private String city;
	@Column
	private String phone;
	@Column
	private String addressline1;
	@Column
	private String addressline2;
	@Column
	private String state;
	@Column
	private String country;
	@Column
	private String postalcode;
	@Column
	private String territory;
	public Office() {
		super();
		System.out.println("Default Constructor called");
	}
	public Office(int officecode, String city, String phone, String addressline1, String addressline2, String state,
			String country, String postalcode, String territory) {
		
		super();
		this.officecode = officecode;
		this.city = city;
		this.phone = phone;
		this.addressline1 = addressline1;
		this.addressline2 = addressline2;
		this.state = state;
		this.country = country;
		this.postalcode = postalcode;
		this.territory = territory;
		System.out.println("Para Constructor called");
	}
	public int getOfficecode() {
		return officecode;
	}
	public void setOfficecode(int officecode) {
		this.officecode = officecode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddressline1() {
		return addressline1;
	}
	public void setAddressline1(String addressline1) {
		this.addressline1 = addressline1;
	}
	public String getAddressline2() {
		return addressline2;
	}
	public void setAddressline2(String addressline2) {
		this.addressline2 = addressline2;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPostalcode() {
		return postalcode;
	}
	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}
	public String getTerritory() {
		return territory;
	}
	public void setTerritory(String territory) {
		this.territory = territory;
	}
	@Override
	public String toString() {
		return "Order [officecode=" + officecode + ", city=" + city + ", phone=" + phone + ", addressline1="
				+ addressline1 + ", addressline2=" + addressline2 + ", state=" + state + ", country=" + country
				+ ", postalcode=" + postalcode + ", territory=" + territory + "]";
	}
	
	
}
