package com.blogdulich.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.blogdulich.Entity.Booking;
import com.blogdulich.Entity.Payment;
@Repository
public interface PaymentDAO extends JpaRepository<Payment, Long> {

}
