package com.klef.model;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import com.klef.entity.Events;
//import com.klef.entity.Login;
import com.klef.entity.Participants;
import com.klef.entity.SingingForms;
//import com.klef.repository.CultureRepository;
import com.klef.repository.EventsRepository;
//import com.klef.repository.LoginRepository;
import com.klef.repository.ParticipantsRepository;
import com.klef.repository.SingingFormsRepository;

@Service
public class SamyakManager 
{

	
//	@Autowired 
//	LoginRepository lnRepository;
	@Autowired
	SingingFormsRepository sfsRepository;
	
	@Autowired 
	ParticipantsRepository pRepository;
	
	@Autowired
	EventsRepository eRepository;
	
	
//	public String saveLogin(Login ln)
//	{
//		 lnRepository.save(ln);
//		return "Login  Successfully ";
//		 
//	}
	
	public String saveParticipants(Participants P)
	{
		pRepository.save(P);
		return "Registered Successfully, " + "No. of Participants: " + countParticipants();
	}
	
	public List<String> readEvents()
	{
		List<String> elist=new ArrayList<String>();
		for(Events e:eRepository.findAll())
			elist.add(toJsonString(e));
		return elist;
	}
	
	public List<String> readParticipants(Long eid)
	{
		List<String> list = new ArrayList<String>();
		for(Participants P:pRepository.readAllById(eid))
			list.add(toJsonString(P));
		return list;
	}
	public List<String> readSingingFormsEvents() {
		List<String> sfslist=new ArrayList<String>();
		for(SingingForms sfs:sfsRepository.findAll())
			sfslist.add(toJsonString(sfs));
		return sfslist;	
		
	}

	public List<String> readSingingFormsEventsById(Long sfsid) {
				
		List<String> sfslist = new ArrayList<String>();
		for(SingingForms sfs:sfsRepository.readAllById(sfsid))
			sfslist.add(toJsonString(sfs));
		return sfslist;
	}
	
	public String updateParticipants(Participants P, Long id)
	{
		Participants tmp = pRepository.findById(id).get();
		tmp.setName(P.getName());
		tmp.setEmailid(P.getEmailid());
		tmp.setPhno(P.getPhno());
		tmp.setEvent_id(P.getEvent_id());
		pRepository.save(tmp);
		return "Data updated successfully...";
	}
	
	public Long countParticipants()
	{
		return pRepository.countParticipants();
	}
	
	
	
	
//	
//	
//	public List<String> readCulture()
//	{
//		List<String> list = new ArrayList<String>();
//		for(Culture c:cRepository.findAll())
//			list.add(toJsonString(c));
//		return list;
//	}
//	
//	public Long countCultures()
//	{
//		return cRepository.countCultures();
//	}
	
	
	
	
	
	
	
	public String toJsonString(Object obj)
	{
		GsonBuilder gbuilder = new GsonBuilder();
		Gson gson = gbuilder.create();
		return gson.toJson(obj);
	}

	

	
	
	
}
