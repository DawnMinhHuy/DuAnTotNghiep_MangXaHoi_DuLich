package com.blogdulich.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.sql.Date;
import java.time.LocalDateTime;

import org.apache.catalina.User;

@Data
@Entity
@Table(name = "Tour")
public class Tour {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Tour_id")
    private Long tourId;
    
    @Column(name = "Title")
    private String title;
    
    @Column(name = " Description")
    private String description;
    
    @Column(name = "Destination")
    private String destination;
    
    @Column(name = "Departure")
    private String departure;
    
    @Column(name = "is_activated")
    private boolean isActivated;
    
//    @ManyToOne
//    @JoinColumn(name = "User_id")
//    private User userId;
    
    @Temporal(TemporalType.DATE)
    @Column(name = "Created_at")
    private Date createdAt;
    
    @Temporal(TemporalType.DATE)
    @Column(name = "Modified_at")
    private Date modifiedAt;
}