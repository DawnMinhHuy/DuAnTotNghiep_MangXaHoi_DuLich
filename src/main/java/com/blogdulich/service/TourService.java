package com.blogdulich.service;

import com.blogdulich.DAO.DAO;
import com.blogdulich.DAO.TourDAO;
import com.blogdulich.entity.Tour;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TourService extends DAO<Tour, Long> {

    @Autowired
    private TourDAO tourDAO;

	@Override
	public List<Tour> findAll() {		
		return tourDAO.findAll();
	}

	@Override
	public Tour findById(Long key) {
		// TODO Auto-generated method stub
		return tourDAO.findById(key).get();
	}

	@Override
	public Tour save(Tour entity) {
		// TODO Auto-generated method stub
		return tourDAO.save(entity);
	}

	@Override
	public void deleteById(Long key) {
		// TODO Auto-generated method stub
		tourDAO.deleteById(key);
	}

	@Override
	public boolean existsBy(Long key) {
		// TODO Auto-generated method stub
		return tourDAO.existsById(key);
	}
}