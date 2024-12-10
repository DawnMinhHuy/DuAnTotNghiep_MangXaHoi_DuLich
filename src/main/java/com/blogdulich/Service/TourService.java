package com.blogdulich.Service;

import java.util.List;

import com.blogdulich.entity.Tours;

public interface TourService {
	Tours findById(Integer id);
	List<Tours> findAll();
	Tours save(Tours tours);
	void update(Tours tours);
	void deleteById(Integer id);
	boolean existedById(Integer id);

}
