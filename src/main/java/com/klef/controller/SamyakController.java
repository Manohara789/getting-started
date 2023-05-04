package com.klef.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

//import com.klef.entity.Culture;
import com.klef.entity.DanceForms;
import com.klef.entity.Dressing_Styles;
import com.klef.entity.EpicsList;
import com.klef.entity.Festivals;
import com.klef.entity.HistoricalMonuments;
//import com.klef.entity.Login;
import com.klef.entity.Participants;
import com.klef.entity.Sculptures;
import com.klef.entity.SingingForms;
import com.klef.entity.Types_Of_Cuisines;
import com.klef.model.SamyakManager;
//import com.klef.repository.CultureRepository;
import com.klef.repository.DanceFormsRepository;
import com.klef.repository.Dressing_StylesRepository;
import com.klef.repository.EpicsListRepository;
import com.klef.repository.FestivalsRepository;
import com.klef.repository.HistoricalMonumentsRepository;
import com.klef.repository.SculpturesRepository;
import com.klef.repository.SingingFormsRepository;
import com.klef.repository.Types_Of_CuisinesRepository;

@RestController
@RequestMapping("/api")
public class SamyakController 
{
	
	@Autowired 
	Dressing_StylesRepository drtlsRepository; 
	
	@Autowired 
	Types_Of_CuisinesRepository tcusRepository; 
	
	@Autowired 
	FestivalsRepository ftsRepository; 
	
	@Autowired 
	EpicsListRepository epsRepository; 
	
	@Autowired
	SingingFormsRepository sfsRepository;
	
	
	@Autowired
	DanceFormsRepository dfsRepository;
	
	@Autowired 
	SculpturesRepository spRepository;

	@Autowired 
	HistoricalMonumentsRepository hmRepository;
	
//	@Autowired 
//	CultureRepository cRepository;
	
	@Autowired
	SamyakManager S;
	
//	@PostMapping("/Login")
//	public String login(@RequestBody Login ln)
//	{
//		return S.saveLogin(ln);
//	}
	
	@PostMapping("/registration")
	public String registration(@RequestBody Participants P)
	{
		return S.saveParticipants(P);
	}
	
	@GetMapping("/events")
	public String events()
	{
		return S.readEvents().toString();
	}
	
	@GetMapping("/participants/{id}")
	public String participants(@PathVariable("id") Long eid)
	{
		return S.readParticipants(eid).toString();
	}
	
	@GetMapping("/countparticipants")
	public String countParticipants()
	{
		return S.countParticipants().toString();
	}
	
//	@GetMapping("/Culture")
//	public List<Culture> getAllNotes()
//		{
//	return cRepository.findAll();
//	}	
//	
//

	
	
	@GetMapping("/HistoricalMonuments")
	public List<HistoricalMonuments> getAllNotes1()
		{
	return hmRepository.findAll();
	}
	
	@GetMapping("/Sculptures")
	public List<Sculptures> getAllNotes2()
		{
	return spRepository.findAll();
	}
	
	@GetMapping("/DanceForms")
	public List<DanceForms> getAllNotes3()
		{
	return dfsRepository.findAll();
	}
	
	@GetMapping("/SingingForms")
	public List<SingingForms> getAllNotes4()
		{
	return sfsRepository.findAll();
	}
	@GetMapping("/EpicsList")
	public List<EpicsList> getAllNotes5()
		{
	return epsRepository.findAll();
	}
	@GetMapping("/Festivals")
	public List<Festivals> getAllNotes6()
		{
	return ftsRepository.findAll();
	}
	@GetMapping("/Types_Of_Cuisines")
	public List<Types_Of_Cuisines> getAllNotes7()
		{
	return tcusRepository.findAll();
	}
	@GetMapping("/Dressing_Styles")
	public List<Dressing_Styles> getAllNotes8()
		{
	return drtlsRepository.findAll();
	}
	
	@GetMapping("/SingingFormsEvents")
	public String SingingFormsEvents()
	{
		return S.readSingingFormsEvents().toString();
	}
	
	@GetMapping("/SingingFormsEventsFind/{id}")
	public String SingingFormsEvents(@PathVariable("id") Long sfsid)
	{
		return S.readSingingFormsEventsById(sfsid).toString();
	}

}
