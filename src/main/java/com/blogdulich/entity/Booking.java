package com.blogdulich.entity;
import javax.persistence.*;

import jakarta.annotation.Generated;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Bookings")
public class Booking{

    @Id
    @GeneratedValue(strategy = Generated.IDENTITY)
    @Column(name = "Booking_ID")
    private Long bookingId;

    @Column(name = "Created_By")
    private String createdBy;

    @Column(name = "Create_Date")
    @Temporal(TemporalType.DATE)
    private Date createDate;

//    @Column(name = "Payment_ID")
//    private Long paymentId;

    @Column(name = "User_ID")
    private Long userId;

    @Column(name = "Status")
    private String status;

    @JoinColumn(name = "Tours_id", referencedColumnName = "Tours_id")
    private Tours tours;
    
    @JoinColumn(name = "User_id", referencedColumnName = "User_id")
    private User user;
    
    @JoinColumn(name = "Payment_id", referencedColumnName = "Payment_id")
    private Payment payment;
    
    @JoinColumn(name = "PersonBooking_id", referencedColumnName = "PersonBooking_id")
    private PersonBooking personbooking;
    
    @JoinColumn(name = "Schedule_id", referencedColumnName = "Schedule_id")
    private Schedule schedule;
