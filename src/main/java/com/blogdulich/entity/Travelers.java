package com.blogdulich.entity;
import javax.persistence.*;
import java.util.Date;

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

  