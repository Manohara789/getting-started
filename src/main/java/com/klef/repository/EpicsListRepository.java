package com.klef.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.entity.EpicsList;


public interface EpicsListRepository extends JpaRepository<EpicsList, Integer>{
	List<EpicsList> findAll();
}
