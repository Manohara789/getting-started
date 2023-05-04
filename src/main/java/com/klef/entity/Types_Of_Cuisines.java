package com.klef.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tcus")
public class Types_Of_Cuisines {
@Id
private Long tcus_id;
private String tcusname;
private String tcus_exixstence;
public Long getTcus_id() {
	return tcus_id;
}
public void setTcus_id(Long tcus_id) {
	this.tcus_id = tcus_id;
}
public String getTcusname() {
	return tcusname;
}
public void setTcusname(String tcusname) {
	this.tcusname = tcusname;
}
public String getTcus_exixstence() {
	return tcus_exixstence;
}
public void setTcus_exixstence(String tcus_exixstence) {
	this.tcus_exixstence = tcus_exixstence;
}
@Override
public String toString() {
	return "Types_Of_Cuisines [tcus_id=" + tcus_id + ", tcusname=" + tcusname + ", tcus_exixstence=" + tcus_exixstence
			+ "]";
}

}
