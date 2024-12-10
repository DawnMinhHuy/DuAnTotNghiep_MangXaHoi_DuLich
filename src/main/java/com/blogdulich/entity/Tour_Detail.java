package com.blogdulich.entity;

import jakarta.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Tour_Detail")
public class Tour_Detail implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Khóa chính tự tăng
    @Column(name = "TourDetail_id")
    private Integer tourDetailId;

    @Column(name = "isActivated")
    private Boolean isActivated;

    @Column(name = "Image")
    private String image;
    
    @Column(name = "Title")
    private String title;

    @Column(name = "Vehicle")
    private String vehicle;

    @Column(name = "Itinerary")
    private String itinerary;

    @Column(name = "Policy")
    private String policy;

	@ManyToOne
    @JoinColumn(name = "Tours_id", referencedColumnName = "Tours_id", nullable = false)
    private Tours tours;

    @ManyToOne
    @JoinColumn(name = "Places_id", referencedColumnName = "Places_id", nullable = false)
    private Places places;

    // Getters and Setters
    public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
    
    public Integer getTourDetailId() {
        return tourDetailId;
    }

    public void setTourDetailId(Integer tourDetailId) {
        this.tourDetailId = tourDetailId;
    }

    public Boolean getIsActivated() {
        return isActivated;
    }

    public void setIsActivated(Boolean isActivated) {
        this.isActivated = isActivated;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getVehicle() {
        return vehicle;
    }

    public void setVehicle(String vehicle) {
        this.vehicle = vehicle;
    }

    public String getItinerary() {
        return itinerary;
    }

    public void setItinerary(String itinerary) {
        this.itinerary = itinerary;
    }

    public String getPolicy() {
        return policy;
    }

    public void setPolicy(String policy) {
        this.policy = policy;
    }

	public Tours getTours() {
		return tours;
	}

	public void setTours(Tours tours) {
		this.tours = tours;
	}

	public Places getPlaces() {
		return places;
	}

	public void setPlaces(Places places) {
		this.places = places;
	}

    
}

