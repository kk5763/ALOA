package com.aloa.additinfo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="accountaddit")
public class AccountAdditInfo {
	@Id
	private Long id;
	
	private String name;
	
	private int gender;
	
	private String hometown;
	
	private String tel;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int i) {
		this.gender = i;
	}

	public String getHometown() {
		return hometown;
	}

	public void setHometown(String hometown) {
		this.hometown = hometown;
	}

	
}
