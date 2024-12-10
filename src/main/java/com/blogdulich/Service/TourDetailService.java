package com.blogdulich.Service;

import java.util.List;

import com.blogdulich.entity.Tour_Detail;


public interface TourDetailService {
	Tour_Detail findById(Integer id);
	List<Tour_Detail> findAll();
	Tour_Detail save(Tour_Detail Tour_Detail);
	void update(Tour_Detail Tour_Detail);
	void deleteById(Integer id);
	boolean existedById(Integer id);

}
