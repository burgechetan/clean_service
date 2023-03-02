package com.example.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dummyentities.LoginCheck;
import com.example.demo.entities.Login;
import com.example.demo.services.LoginService;
@CrossOrigin(origins = "http://localhost:3000")
@RestController
public class LoginController 
{
	@Autowired
	private LoginService login_serv;
	
	@PostMapping("/checkLogin")
	public Login checkLogin(@RequestBody LoginCheck login_check)
	{
		System.out.println("Hello");
		return login_serv.getLogin(login_check.getUid(), login_check.getPassword());
	}
	
	
	
	 

}
