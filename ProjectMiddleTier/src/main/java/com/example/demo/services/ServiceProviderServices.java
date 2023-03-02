package com.example.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.example.demo.dummyentities.DummyServiceProvider;
import com.example.demo.entities.Login;
import com.example.demo.entities.Role;
import com.example.demo.entities.ServiceProvider;
import com.example.demo.repositories.ServiceProviderRepository;

@Service
public class ServiceProviderServices {

	@Autowired
	private ServiceProviderRepository sprepo;
	
	public ServiceProvider registerServiceProvider(ServiceProvider sp)
	{ 
		return sprepo.save(sp);
		
	}
}
