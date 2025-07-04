package com.entities;

import java.util.Date;
import java.util.Random;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Notes {
	@Id
	private int id;
	@Column(length=100)
	private String title;
	@Column(length=10000)
	private String content;
	private Date addDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	public Notes(String title, String content, Date addDate) {
		super();
		this.id = new Random().nextInt(200);
		this.title = title;
		this.content = content;
		this.addDate = addDate;
	}
	public Notes() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
