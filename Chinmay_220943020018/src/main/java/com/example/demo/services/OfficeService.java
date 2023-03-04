package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.demo.entities.Office;
import com.example.demo.repositories.OfficeRepository;

@Service
public class OfficeService {
	
	@Autowired
	OfficeRepository repos;
	
	public List<Office> getAll()
	{
		return repos.findAll();
	}
	
	public List<Office> getByCountry(String country)
	{
		return repos.getByCountry(country);
	}
	
	public Office updatePhone(String phone, int oc)
	{
		return repos.updatePhone(phone,oc);
	}
}
