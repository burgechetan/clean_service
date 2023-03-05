package com.example.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.Service;

@Repository
public interface ServiceRepository extends JpaRepository<Service, Integer>
{ 
	@Query("select s from Service s where s_name ='Home cleaning' ")
	public List<Service> gethomeService();
	
	@Query("select s from Service s where s_name ='kitchen cleaning' ")
	public List<Service> getkitchenService();
	
	@Query("select s from Service s where s_name ='Bathroom cleaning' ")
	public List<Service> getBathroomService();
	
	@Query("select s from Service s where s_name ='Kitchen Tops & Tiles cleaning' ")
	public List<Service> getTopsService();

	@Query("select s from Service s where s_name ='Office cleaning' ")
	public List<Service> getOfficeService();
	
	@Query("select s from Service s where s_name ='Washroom cleaning' ")
	public List<Service> getWashroomService();
	
	@Query("select s from Service s where s_name ='Floor cleaning' ")
	public List<Service> getFloorService();
	
	@Query("select s from Service s where s_name ='Home cleaning(deep)' ")
	public List<Service> getDeepService();
}
