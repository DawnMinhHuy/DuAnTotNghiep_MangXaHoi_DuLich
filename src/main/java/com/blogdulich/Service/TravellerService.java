package com.blogdulich.Service;

import java.util.List;

import com.blogdulich.entity.Tours;
import com.blogdulich.entity.Travelers;

public interface TravellerService {
	Travelers findById(Integer id);
	List<Travelers> findAll();
	Travelers save(Travelers travelers);
	void update(Travelers travelers);
	void deleteById(Integer id);
	boolean existedById(Integer id);

}
