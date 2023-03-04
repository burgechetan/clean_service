package com.example.demo.repositories;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.Office;

@Repository
@Transactional
public interface OfficeRepository extends JpaRepository<Office,Integer> {
	@Query("select o from offices o where country = ?1")
	public List<Office> getByCountry(String country);
	
	@Query("")
	public Office updatePhone(String phone, int oc);
}
