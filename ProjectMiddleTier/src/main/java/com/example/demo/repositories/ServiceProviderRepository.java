package com.example.demo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.ServiceProvider;
@Repository
public interface ServiceProviderRepository extends JpaRepository<ServiceProvider, Integer> {

}
