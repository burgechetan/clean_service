package com.example.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.Order_item;
import com.example.demo.services.Order_itemService;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
public class Order_itemController 
{
	@Autowired
	Order_itemService ois;
	
	@GetMapping("/getAllOrder_items")
	public List<Order_item> getAllOrder_items()
	{
		return ois.getAllOrder_items();
	}
	
	
}
