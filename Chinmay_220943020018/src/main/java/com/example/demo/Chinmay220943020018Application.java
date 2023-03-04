package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class },scanBasePackages = {"com.example.demo.repositories"})
public class Chinmay220943020018Application {

	public static void main(String[] args) {
		SpringApplication.run(Chinmay220943020018Application.class, args);
	}

}
