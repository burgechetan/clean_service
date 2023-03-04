package com.example.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.Service;
import com.example.demo.services.ServiceService;

@CrossOrigin("http://localhost:3000")
@RestController
public class ServiceController 
{
	@Autowired
	private ServiceService sservice;
	
	@GetMapping("/services")
	public List<Service> getAllService()
	{
		return sservice.getAllService();
	}
}
