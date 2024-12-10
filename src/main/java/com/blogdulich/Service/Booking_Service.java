package com.blogdulich.Service;

import java.util.List;

import com.blogdulich.entity.Booking;

public interface Booking_Service{
	Booking findById(Integer id);
	List<Booking> findAll();
	Booking save(Booking booking);
	void update(Booking booking);
	void deleteById(Integer id);
	boolean existedById(Integer id);

}
