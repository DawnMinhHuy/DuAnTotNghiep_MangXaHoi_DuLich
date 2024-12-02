package com.blogdulich.entity;

import jakarta.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "Travelers")
public class Travelers implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Khóa chính tự tăng
    @Column(name = "Travelers_id")
    private Integer travelersId;

    @Column(name = "Full_name")
    private String fullName; // Họ và tên khách du lịch

    @Column(name = "Phone")
    private String phone; // Số điện thoại

    @Column(name = "Birthday")
    @Temporal(TemporalType.DATE) // Chỉ định kiểu ngày tháng
    private Date birthday; // Ngày sinh

    @Column(name = "Passport")
    private String passport; // Số hộ chiếu

    @Column(name = "Gender")
    private String gender; // Giới tính

    @Column(name = "Address")
    private String address; // Địa chỉ

    @ManyToOne
    @JoinColumn(name = "Booking_id", referencedColumnName = "Booking_id", nullable = false)
    private Booking booking; // Quan hệ nhiều đến 1 với bảng Booking

    // Getters and Setters
    public Integer getTravelersId() {
        return travelersId;
    }

    public void setTravelersId(Integer travelersId) {
        this.travelersId = travelersId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getPassport() {
        return passport;
    }

    public void setPassport(String passport) {
        this.passport = passport;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Booking getBooking() {
        return booking;
    }

    public void setBooking(Booking booking) {
        this.booking = booking;
    }
}
