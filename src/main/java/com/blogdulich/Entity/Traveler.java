package com.blogdulich.Entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@Table(name = "Traveler")
public class Traveler {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Traveler_id")
    private Long travelerId;

    @Column(name = "Full_name")
    private String fullName;

    @Column(name = "Phone")
    private String phone;

//    @Column(name = "Birthday")
//    @Temporal(TemporalType.DATE)
//    private Date birthday;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
    @Column(name = "Birthday")
    private Date birthday;


    @Column(name = "Passport")
    private String passport;

    @Column(name = "Gender")
    private Boolean gender;

    @Column(name = "Address")
    private String address;
    
//    @OneToMany
//    private String 
}
//@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
//@Temporal(TemporalType.DATE)
//@Column(name = "Birthday")
//private Date birthday;
