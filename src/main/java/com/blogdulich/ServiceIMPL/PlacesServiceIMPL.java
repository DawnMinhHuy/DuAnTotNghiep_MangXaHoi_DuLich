package com.blogdulich.ServiceIMPL;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blogdulich.DAO.BookingDAO;
import com.blogdulich.DAO.PlacesDAO;
import com.blogdulich.DAO.ToursDAO;
import com.blogdulich.Service.Booking_Service;
import com.blogdulich.Service.PlacesService;
import com.blogdulich.Service.TourService;
import com.blogdulich.entity.Booking;
import com.blogdulich.entity.Places;
import com.blogdulich.entity.Tours;


@Service
public class PlacesServiceIMPL implements PlacesService {
	
	@Autowired
	PlacesDAO placesDAO;

	@Override
	public Places findById(Integer id) {
		// TODO Auto-generated method stub
		return placesDAO.findById(id).get();
	}

	@Override
	public List<Places> findAll() {
		// TODO Auto-generated method stub
		return placesDAO.findAll();
	}

	@Override
	public Places save(Places Places) {
		// TODO Auto-generated method stub
		return placesDAO.save(Places);
	}

	@Override
	public void update(Places Places) {
		// TODO Auto-generated method stub
		placesDAO.save(Places);
	}

	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		placesDAO.deleteById(id);
	}

	@Override
	public boolean existedById(Integer id) {
		// TODO Auto-generated method stub
		return placesDAO.existsById(id);
	}
	
}
