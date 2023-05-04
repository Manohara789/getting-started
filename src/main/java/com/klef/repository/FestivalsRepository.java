package com.klef.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.entity.Festivals;


public interface FestivalsRepository extends JpaRepository<Festivals, Integer> {
	List<Festivals> findAll();

}
