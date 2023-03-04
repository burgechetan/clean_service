package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
 
import com.example.demo.entities.Service;
import com.example.demo.repositories.ServiceRepository;

@org.springframework.stereotype.Service
public class ServiceService 
{

	@Autowired
	private ServiceRepository srpo;
	
	public List<Service> getAllService()
	{
		return srpo.findAll();
	}
}
