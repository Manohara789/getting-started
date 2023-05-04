package com.klef.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import com.klef.entity.SingingForms;

@Repository
public interface SingingFormsRepository extends JpaRepository<SingingForms , Long>{
	List<SingingForms> findAll();
	
	@Query("SELECT sfs FROM SingingForms sfs  WHERE sfs.id = :sfsid")
	public List<SingingForms> readAllById(@Param("sfsid") Long sfsid);
}
