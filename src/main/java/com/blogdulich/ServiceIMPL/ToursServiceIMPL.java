package com.blogdulich.ServiceIMPL;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blogdulich.DAO.BookingDAO;
import com.blogdulich.DAO.ToursDAO;
import com.blogdulich.Service.Booking_Service;
import com.blogdulich.Service.TourService;
import com.blogdulich.entity.Booking;
import com.blogdulich.entity.Tours;


@Service
public class ToursServiceIMPL implements TourService {
	
	@Autowired
	ToursDAO tourDAO;

	@Override
	public Tours findById(Integer id) {
		// TODO Auto-generated method stub
		return tourDAO.findById(id).get();
	}

	@Override
	public List<Tours> findAll() {
		// TODO Auto-generated method stub
		return tourDAO.findAll();
	}

	@Override
	public Tours save(Tours tours) {
		// TODO Auto-generated method stub
		return tourDAO.save(tours);
	}

	@Override
	public void update(Tours tours) {
		// TODO Auto-generated method stub
		tourDAO.save(tours);
	}

	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		tourDAO.deleteById(id);
	}

	@Override
	public boolean existedById(Integer id) {
		// TODO Auto-generated method stub
		return tourDAO.existsById(id);
	}
	
}
