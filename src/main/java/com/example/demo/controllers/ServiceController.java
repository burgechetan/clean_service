package com.example.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.Service;
import com.example.demo.services.ServiceService;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
public class ServiceController 
{
	@Autowired 
	ServiceService ss;
	
	@GetMapping("/getAllServices")
	public List<Service> getAllService()
	{
		return ss.getAllServices();
	}
	
	@PostMapping("/addservice")
	public void addService(@RequestBody Service s )
	{
		ss.addService(s);
	}
	
	@GetMapping("/gethomecleaning")
	public List<com.example.demo.entities.Service> getBathroomcleaning()
	{
		return ss.gethomecleaning();
	}
	
	@GetMapping("/getkitchencleaning")
	public List<com.example.demo.entities.Service> getTopscleaning()
	{
		return ss.getTopscleaning();
	}
	
	@GetMapping("/getbathroomcleaning")
	public List<com.example.demo.entities.Service> getbathroomcleaning()
	{
		return ss.getBathroomcleaning();
	}
	
	
	@GetMapping("/getkitchentops&tilescleaning")
	public List<com.example.demo.entities.Service> gettopscleaning()
	{
		return ss.getTopscleaning();
	}
	
	@GetMapping("/getofficecleaning")
	public List<com.example.demo.entities.Service> getofficecleaning()
	{
		return ss.getTopscleaning();
	}
	
	@GetMapping("/getwashroomcleaning")
	public List<com.example.demo.entities.Service> getwashroomcleaning()
	{
		return ss.getWashroomcleaning();
	}
	
	@GetMapping("/getfloorcleaning")
	public List<com.example.demo.entities.Service> getfloorcleaning()
	{
		return ss.getFloorcleaning();
	}
	
	@GetMapping("/gethomecleaningdeep")
	public List<com.example.demo.entities.Service> getdeepcleaning()
	{
		return ss.getDeepcleaning();
	}
}
