package com.blogdulich.Entity;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;

@Data
@Entity
@Table(name = "Booking")
public class Booking{

	@Id
    @Column(name = "booking_id")
    private String bookingid;  // VARCHAR(255)

    @Column(name = "user_id")
    private String userid;     // VARCHAR(255)

    @Column(name = "tours_id")
    private String tourid;     // VARCHAR(255)

    @Column(name = "created_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createddate;  // DATETIME

    @Column(name = "status")
    private Boolean status = false;    // BIT

//    @Column(name = "Payment_ID")
//    private Long paymentId;

//    @Column(name = "User_ID")
//    private Long userId;

//    @JoinColumn(name = "Tours_id", referencedColumnName = "Tours_id")
//    private Tours tours;
//    
//    @JoinColumn(name = "User_id", referencedColumnName = "User_id")
//    private User user;
//    
//    @JoinColumn(name = "Payment_id", referencedColumnName = "Payment_id")
//    private Payment payment;
//    
//    @JoinColumn(name = "PersonBooking_id", referencedColumnName = "PersonBooking_id")
//    private PersonBooking personbooking;
//    
//    @JoinColumn(name = "Schedule_id", referencedColumnName = "Schedule_id")
//    private Schedule schedule;
}
