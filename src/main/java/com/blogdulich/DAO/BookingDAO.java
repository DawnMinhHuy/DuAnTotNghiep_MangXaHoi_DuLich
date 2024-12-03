package com.blogdulich.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.blogdulich.Entity.Booking;
@Repository
public interface BookingDAO extends JpaRepository<Booking, String> {

}