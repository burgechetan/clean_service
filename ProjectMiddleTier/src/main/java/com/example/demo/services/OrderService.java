package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.Order;
import com.example.demo.repositories.OrderRepository;

@Service
public class OrderService 
{
	@Autowired
	OrderRepository orepo;
	
	public List<Order> getAllOrders()
	{
		return orepo.findAll();
	}

	public void addOrder(Order o) 
	{
		orepo.save(o);
	}
}
