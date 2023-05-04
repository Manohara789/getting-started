package com.klef.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity()
@Table(name="epics")
public class EpicsList {
@Id
private int epic_id;
private String epicname;
private String wby;
private String region_it_belongs_to;
private String gist;
public int getEpic_id() {
	return epic_id;
}
public void setEpic_id(int epic_id) {
	this.epic_id = epic_id;
}
public String getEpicname() {
	return epicname;
}
public void setEpicname(String epicname) {
	this.epicname = epicname;
}
public String getWby() {
	return wby;
}
public void setWby(String wby) {
	this.wby = wby;
}
public String getRegion_it_belongs_to() {
	return region_it_belongs_to;
}
public void setRegion_it_belongs_to(String region_it_belongs_to) {
	this.region_it_belongs_to = region_it_belongs_to;
}
public String getGist() {
	return gist;
}
public void setGist(String gist) {
	this.gist = gist;
}
@Override
public String toString() {
	return "EpicsList [epic_id=" + epic_id + ", epicname=" + epicname + ", wby=" + wby + ", region_it_belongs_to="
			+ region_it_belongs_to + ", gist=" + gist + "]";
}



}
