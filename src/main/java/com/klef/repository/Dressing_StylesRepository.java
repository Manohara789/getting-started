package com.klef.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.entity.Dressing_Styles;


public interface Dressing_StylesRepository extends JpaRepository<Dressing_Styles, Long>{
	List<Dressing_Styles> findAll();
}
