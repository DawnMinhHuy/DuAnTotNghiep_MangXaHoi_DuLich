package com.blogdulich.entity;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Travelers")
public class Traveler {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Travelers_id")
    private Long travelersId;

    @Column(name = "Full_name")
    private String fullName;

    @Column(name = "Phone")
    private String phone;

    @Column(name = "Birthday")
    @Temporal(TemporalType.DATE)
    private Date birthday;

    @Column(name = "Passport")
    private String passport;

    @Column(name = "Gender")
    private Boolean gender;

    @Column(name = "Address")
    private String address;

}
  