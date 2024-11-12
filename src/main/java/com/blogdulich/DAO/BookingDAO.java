package com.blogdulich.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.blogdulich.entity.Booking;

public interface BookingDAO extends JpaRepository<Booking, String> {

}
