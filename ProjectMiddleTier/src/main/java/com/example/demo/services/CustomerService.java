package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.Customer;
import com.example.demo.repositories.CustomerRepository;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository crpo;
	
	public Customer registerCustomer(Customer c)
	{
		return crpo.save(c);
	}

	public List<Customer> getAllCustomers() 
	{
		return crpo.findAll();
	}
}
