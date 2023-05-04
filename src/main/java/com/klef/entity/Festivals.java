package com.klef.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="fts")
public class Festivals {
@Id
private int f_id;
private String festivalname;
private String in_region_it_is_celebrated;
private String in_the_name_of;
public int getF_id() {
	return f_id;
}
public void setF_id(int f_id) {
	this.f_id = f_id;
}
public String getFestivalname() {
	return festivalname;
}
public void setFestivalname(String festivalname) {
	this.festivalname = festivalname;
}
public String getIn_region_it_is_celebrated() {
	return in_region_it_is_celebrated;
}
public void setIn_region_it_is_celebrated(String in_region_it_is_celebrated) {
	this.in_region_it_is_celebrated = in_region_it_is_celebrated;
}
public String getIn_the_name_of() {
	return in_the_name_of;
}
public void setIn_the_name_of(String in_the_name_of) {
	this.in_the_name_of = in_the_name_of;
}
@Override
public String toString() {
	return "Festivals [f_id=" + f_id + ", festivalname=" + festivalname + ", in_region_it_is_celebrated="
			+ in_region_it_is_celebrated + ", in_the_name_of=" + in_the_name_of + "]";
}

}
