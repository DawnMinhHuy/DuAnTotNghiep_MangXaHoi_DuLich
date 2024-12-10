package com.blogdulich.ServiceIMPL;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blogdulich.DAO.BookingDAO;
import com.blogdulich.DAO.DAO;
import com.blogdulich.DAO.Tour_DetailDAO;
import com.blogdulich.DAO.ToursDAO;
import com.blogdulich.Service.Booking_Service;
import com.blogdulich.Service.TourDetailService;
import com.blogdulich.Service.TourService;
import com.blogdulich.entity.Booking;
import com.blogdulich.entity.Tour_Detail;
import com.blogdulich.entity.Tours;


@Service
public class TourDetailServiceIMPL implements TourDetailService{
	
	@Autowired
	Tour_DetailDAO tourDetailDAO;

	@Override
	public Tour_Detail findById(Integer id) {
		// TODO Auto-generated method stub
		return tourDetailDAO.findById(id).get();
	}

	@Override
	public List<Tour_Detail> findAll() {
		// TODO Auto-generated method stub
		return tourDetailDAO.findAll();
	}

	@Override
	public Tour_Detail save(Tour_Detail Tour_Detail) {
		// TODO Auto-generated method stub
		return tourDetailDAO.save(Tour_Detail);
	}

	@Override
	public void update(Tour_Detail Tour_Detail) {
		// TODO Auto-generated method stub
		tourDetailDAO.save(Tour_Detail);
	}

	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		tourDetailDAO.deleteById(id);
	}

	@Override
	public boolean existedById(Integer id) {
		// TODO Auto-generated method stub
		return tourDetailDAO.existsById(id);
	}

	
	
}
