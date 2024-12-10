package com.blogdulich.ServiceIMPL;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blogdulich.DAO.BookingDAO;
import com.blogdulich.DAO.DAO;
import com.blogdulich.DAO.ScheduleDAO;
import com.blogdulich.DAO.Tour_DetailDAO;
import com.blogdulich.DAO.ToursDAO;
import com.blogdulich.Service.Booking_Service;
import com.blogdulich.Service.ScheduleService;
import com.blogdulich.Service.TourDetailService;
import com.blogdulich.Service.TourService;
import com.blogdulich.entity.Booking;
import com.blogdulich.entity.Schedule;
import com.blogdulich.entity.Tour_Detail;
import com.blogdulich.entity.Tours;


@Service
public class ScheduleServiceIMPL implements ScheduleService{
	
	@Autowired
	ScheduleDAO scheduleDAO;

	@Override
	public Schedule findById(Integer id) {
		// TODO Auto-generated method stub
		return scheduleDAO.findById(id).get();
	}

	@Override
	public List<Schedule> findAll() {
		// TODO Auto-generated method stub
		return scheduleDAO.findAll();
	}

	@Override
	public Schedule save(Schedule schedule) {
		// TODO Auto-generated method stub
		return scheduleDAO.save(schedule);
	}

	@Override
	public void update(Schedule schedule) {
		// TODO Auto-generated method stub
		scheduleDAO.save(schedule);
	}

	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		scheduleDAO.deleteById(id);
	}

	@Override
	public boolean existedById(Integer id) {
		// TODO Auto-generated method stub
		return scheduleDAO.existsById(id);
	}

	
}
