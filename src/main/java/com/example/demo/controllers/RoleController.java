package com.example.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.services.RoleService;
import com.example.demo.entities.*;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
public class RoleController 
{
	@Autowired
	private RoleService role_serv;
	
	@GetMapping("/getAllRolls")
	public List<Role> getAllRolls()
	{
		return role_serv.getAllRolls();
	}

}
