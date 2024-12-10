package com.blogdulich.ServiceIMPL;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blogdulich.DAO.BookingDAO;
import com.blogdulich.Service.Booking_Service;
import com.blogdulich.entity.Booking;


@Service
public class BookingServiceIMPL implements Booking_Service {
	
	@Autowired
	BookingDAO bookingDAO;

	@Override
	public Booking findById(Integer id) {
		// TODO Auto-generated method stub
		return bookingDAO.findById(id).get();
	}

	@Override
	public List<Booking> findAll() {
		// TODO Auto-generated method stub
		return bookingDAO.findAll();
	}

	@Override
	public Booking save(Booking booking) {
		// TODO Auto-generated method stub
		return bookingDAO.save(booking);
	}

	@Override
	public void update(Booking booking) {
		// TODO Auto-generated method stub
		bookingDAO.save(booking);
	}

	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		bookingDAO.deleteById(id);
	}

	@Override
	public boolean existedById(Integer id) {
		// TODO Auto-generated method stub
		return bookingDAO.existsById(id);
	}

}
