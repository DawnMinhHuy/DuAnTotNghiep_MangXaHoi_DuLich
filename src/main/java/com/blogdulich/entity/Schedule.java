package com.blogdulich.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Schedule")
public class Schedule {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Schedule_id")
    private Long scheduleId;

    @Column(name = "Schedule_time") // Renamed from "Time" for clarity
    private String scheduleTime;

    @Column(name = "Start_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date startDate;

    @Column(name = "End_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date endDate;

    @Column(name = "children_price")
    private Double childrenPrice;

    @Column(name = "adult_price")
    private Double adultPrice;

    @ManyToOne // Added to define the relationship
    @JoinColumn(name = "Tour_id", referencedColumnName = "Tour_id")
    private Tour tour;
}
