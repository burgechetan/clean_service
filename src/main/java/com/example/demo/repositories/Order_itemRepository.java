package com.example.demo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.Order_item;

@Repository
public interface Order_itemRepository extends JpaRepository<Order_item, Integer> 
{

}
