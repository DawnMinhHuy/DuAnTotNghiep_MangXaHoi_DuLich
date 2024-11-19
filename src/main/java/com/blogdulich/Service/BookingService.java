package com.blogdulich.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.blogdulich.DAO.BookingDAO;
import com.blogdulich.DAO.DAO;
import com.blogdulich.entity.Booking;

public class BookingService extends DAO<Booking, String> {

	@Autowired
	BookingDAO bookingDao;
	
	@Override
	public List<Booking> findAll() {
		// TODO Auto-generated method stub
		return bookingDao.findAll();
	}

	@Override
	public Booking findById(String id) {
		// TODO Auto-generated method stub
		return bookingDao.findById(id).get();
	}

	@Override
	public Booking save(Booking booking) {
		// TODO Auto-generated method stub
		return bookingDao.save(booking);
	}

	@Override
	public void deleteById(String id) {
		// TODO Auto-generated method stub
		bookingDao.deleteById(id);
	}

	@Override
	public boolean existsBy(String id) {
		// TODO Auto-generated method stub
		return bookingDao.existsById(id);
	}

}
