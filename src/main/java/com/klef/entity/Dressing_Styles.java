package com.klef.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="drtls")
public class Dressing_Styles {

@Id
private Long drtls_id;
private String dressname;
private String place_of_its_existence;
private String in_season_it_is_worn;
public Long getDrtls_id() {
	return drtls_id;
}
public void setDrtls_id(Long drtls_id) {
	this.drtls_id = drtls_id;
}
public String getDressname() {
	return dressname;
}
public void setDressname(String dressname) {
	this.dressname = dressname;
}
public String getPlace_of_its_existence() {
	return place_of_its_existence;
}
public void setPlace_of_its_existence(String place_of_its_existence) {
	this.place_of_its_existence = place_of_its_existence;
}
public String getIn_season_it_is_worn() {
	return in_season_it_is_worn;
}
public void setIn_season_it_is_worn(String in_season_it_is_worn) {
	this.in_season_it_is_worn = in_season_it_is_worn;
}
@Override
public String toString() {
	return "Dressing_Styles [drtls_id=" + drtls_id + ", dressname=" + dressname + ", place_of_its_existence="
			+ place_of_its_existence + ", in_season_it_is_worn=" + in_season_it_is_worn + "]";
}

}
