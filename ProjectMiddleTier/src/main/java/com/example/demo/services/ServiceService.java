package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.demo.entities.Service;
import com.example.demo.repositories.ServiceRepository;

@org.springframework.stereotype.Service
public class ServiceService 
{
	@Autowired 
	ServiceRepository srepo;
	
	public List<com.example.demo.entities.Service> getAllServices()
	{
		return srepo.findAll();
	}

	public List<com.example.demo.entities.Service> gethomecleaning() 
	{
		return srepo.gethomeService();
	}
	
	public List<com.example.demo.entities.Service> getkitchencleaning() 
	{
		return srepo.getkitchenService();
	}
	
	public List<com.example.demo.entities.Service> getBathroomcleaning() 
	{
		return srepo.getBathroomService();
	}
	
	public List<com.example.demo.entities.Service> getTopscleaning() 
	{
		return srepo.getTopsService();
	}
	
	public List<com.example.demo.entities.Service> getFloorcleaning() 
	{
		return srepo.getFloorService();
	}
	public List<com.example.demo.entities.Service> getDeepcleaning() 
	{
		return srepo.getDeepService();
	}
	public List<com.example.demo.entities.Service> getOfficecleaning() 
	{
		return srepo.getOfficeService();
	}
	public List<com.example.demo.entities.Service> getWashroomcleaning() 
	{
		return srepo.getWashroomService();
	}

	public void addService(Service s) 
	{
		srepo.save(s);
	}
}
