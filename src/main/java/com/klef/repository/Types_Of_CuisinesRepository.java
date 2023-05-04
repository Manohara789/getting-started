package com.klef.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import com.klef.entity.Types_Of_Cuisines;

public interface Types_Of_CuisinesRepository extends JpaRepository<Types_Of_Cuisines, Long>{
	List<Types_Of_Cuisines> findAll();
}
