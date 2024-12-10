package com.blogdulich.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.blogdulich.entity.Booking;
@Repository
public interface BookingDAO extends JpaRepository<Booking, Integer> {

}