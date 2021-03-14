package com.skilldistillery.learningapp.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Resource {
	
	@Id
	private int id;
	
	private String name;
	
	private String url;
	
	private String subject;

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
