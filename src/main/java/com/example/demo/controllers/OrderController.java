package com.example.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.Order;
import com.example.demo.services.OrderService;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
public class OrderController 
{
	@Autowired 
	OrderService os;
	
	@GetMapping("/getAllOrders")
	public List<Order> getAllOrders()
	{
		return os.getAllOrders();
	}
	
	@PostMapping("/addorder")
	public void addOrder(@RequestBody Order o)
	{
		os.addOrder(o);
	}
}
