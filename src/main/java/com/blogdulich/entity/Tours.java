package com.blogdulich.entity;

import jakarta.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "Tours")
public class Tours implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Khóa chính tự tăng
    @Column(name = "Tours_id")
    private Integer toursId;

    @ManyToOne
    @JoinColumn(name = "Company_id", referencedColumnName = "Company_id", nullable = false)
    private Company_Details companyDetails;

    @Column(name = "Created_date")
    private Date createdDate;

    @Column(name = "Modified_date")
    private Date modifiedDate;

    @Column(name = "is_activated")
    private Boolean isActivated;

    @Column(name = "Title")
    private String title;

    @Column(name = "Destination")
    private String destination;

    @Column(name = "Description")
    private String description;

    @Column(name = "Departure")
    private String departure;

    // Getters and Setters
    public Integer getToursId() {
        return toursId;
    }

    public void setToursId(Integer toursId) {
        this.toursId = toursId;
    }

  
    public Company_Details getCompanyDetails() {
		return companyDetails;
	}

	public void setCompanyDetails(Company_Details companyDetails) {
		this.companyDetails = companyDetails;
	}

	public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Date getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(Date modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public Boolean getIsActivated() {
        return isActivated;
    }

    public void setIsActivated(Boolean isActivated) {
        this.isActivated = isActivated;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDeparture() {
        return departure;
    }

    public void setDeparture(String departure) {
        this.departure = departure;
    }
}
