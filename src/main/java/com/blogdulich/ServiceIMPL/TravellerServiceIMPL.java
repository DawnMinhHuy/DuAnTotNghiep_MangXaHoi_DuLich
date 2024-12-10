package com.blogdulich.ServiceIMPL;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blogdulich.DAO.BookingDAO;
import com.blogdulich.DAO.ToursDAO;
import com.blogdulich.DAO.TravellerDAO;
import com.blogdulich.Service.Booking_Service;
import com.blogdulich.Service.TourService;
import com.blogdulich.Service.TravellerService;
import com.blogdulich.entity.Booking;
import com.blogdulich.entity.Tours;
import com.blogdulich.entity.Travelers;


@Service
public class TravellerServiceIMPL implements TravellerService {
	
	@Autowired
	TravellerDAO travellerDAO;

	@Override
	public Travelers findById(Integer id) {
		// TODO Auto-generated method stub
		return travellerDAO.findById(id).get();
	}

	@Override
	public List<Travelers> findAll() {
		// TODO Auto-generated method stub
		return travellerDAO.findAll();
	}

	@Override
	public Travelers save(Travelers travelers) {
		// TODO Auto-generated method stub
		return travellerDAO.save(travelers);
	}

	@Override
	public void update(Travelers travelers) {
		// TODO Auto-generated method stub
		travellerDAO.save(travelers);
	}

	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		travellerDAO.deleteById(id);
	}

	@Override
	public boolean existedById(Integer id) {
		// TODO Auto-generated method stub
		return travellerDAO.existsById(id);
	}

	
	
}
