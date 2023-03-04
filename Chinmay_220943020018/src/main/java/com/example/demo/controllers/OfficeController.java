package com.example.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.Office;
import com.example.demo.services.OfficeService;

@RestController
public class OfficeController {
	@Autowired
	OfficeService os;
	
	@GetMapping("/getAll")
	public List<Office> getAll()
	{
		//System.out.println("getAll Called");
		return os.getAll();
	}
	
	@GetMapping("/getByCountry")
	public List<Office> getByCountry(String country)
	{
		return os.getByCountry(country);
	}
	
	@PutMapping("/updatePhone")
	public Office updatePhone(String phone, int oc)
	{
		return os.updatePhone(phone,oc);
	}
}
