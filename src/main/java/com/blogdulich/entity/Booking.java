package com.blogdulich.entity;


import org.apache.catalina.User;
import org.springframework.scheduling.annotation.Scheduled;

import jakarta.annotation.Generated;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.awt.event.PaintEvent;
import java.util.Date;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Booking")
public class Booking{

    @Id
    @Column(name = "Booking_id")
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
    private PaintEvent payment;
    

    @JoinColumn(name = "Schedule_id", referencedColumnName = "Schedule_id")
    private Scheduled schedule;
}