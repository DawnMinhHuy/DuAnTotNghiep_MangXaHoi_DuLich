package com.blogdulich.entity;

import jakarta.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "Schedule")
public class Schedule implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Khóa chính tự tăng
    @Column(name = "Schedule_id")
    private Integer scheduleId;

    @Column(name = "Time")
    private String time; // Thời gian (sáng, chiều, tối,...)

    @Column(name = "Start_date")
    @Temporal(TemporalType.TIMESTAMP) // Chỉ định kiểu ngày tháng
    private Date startDate;

    @Column(name = "End_date")
    @Temporal(TemporalType.TIMESTAMP) // Chỉ định kiểu ngày tháng
    private Date endDate;

    @Column(name = "children_price")
    private Float childrenPrice; // Giá vé trẻ em

    @Column(name = "adult_price")
    private Float adultPrice; // Giá vé người lớn

    @ManyToOne
    @JoinColumn(name = "TourDetail_id", referencedColumnName = "TourDetail_id", nullable = false)
    private Tour_Detail tourDetail; // Quan hệ nhiều đến 1 với bảng Tour_Detail

    // Getters and Setters
    public Integer getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(Integer scheduleId) {
        this.scheduleId = scheduleId;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Float getChildrenPrice() {
        return childrenPrice;
    }

    public void setChildrenPrice(Float childrenPrice) {
        this.childrenPrice = childrenPrice;
    }

    public Float getAdultPrice() {
        return adultPrice;
    }

    public void setAdultPrice(Float adultPrice) {
        this.adultPrice = adultPrice;
    }

	public Tour_Detail getTourDetail() {
		return tourDetail;
	}

	public void setTourDetail(Tour_Detail tourDetail) {
		this.tourDetail = tourDetail;
	}

    
}
