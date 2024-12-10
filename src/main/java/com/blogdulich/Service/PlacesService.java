package com.blogdulich.Service;

import java.util.List;

import com.blogdulich.entity.Places;
import com.blogdulich.entity.Tours;

public interface PlacesService {
	Places findById(Integer id);
	List<Places> findAll();
	Places save(Places Places);
	void update(Places Places);
	void deleteById(Integer id);
	boolean existedById(Integer id);
}
