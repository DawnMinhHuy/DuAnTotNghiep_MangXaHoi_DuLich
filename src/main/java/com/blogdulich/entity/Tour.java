package com.blogdulich.entity;

import java.io.File;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "Tour")
public class Tour {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_Tour")
	private Long ID_Tour;
	
	@Column(name = "Username")
	private String Username;
	
	@Column(name = "Create_Date")
	private Date Create_Date = new Date();
	
	@Column(name = "Title")
	private String Title;
	
	@Column(name = "Description")
	private String Description;
	
	@Column(name = "Image")
	private String Image;
	
	@Column(name = "Departures")
	private String Departures;
	
	@Column(name = "Destination")
	private String Destination;
	
	@Column(name = "Actives")
	private boolean Actives;
	
	@Column(name = "ID_Schedule")
	private Long ID_Schedule;
}
