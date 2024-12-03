package com.blogdulich.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blogdulich.DAO.TourDAO;
import com.blogdulich.Entity.Tour;
import com.blogdulich.DAO.DAO;

@Service
public class TourService extends DAO<Tour, Long> {

	@Autowired
	private TourDAO tourDao;
	
	@Override
	public List<Tour> findAll() {
		// TODO Auto-generated method stub
		return tourDao.findAll();
	}

	@Override
	public Tour findById(Long id) {
		// TODO Auto-generated method stub
		return tourDao.findById(id).get();
	}

	@Override
	public Tour save(Tour tour) {
		// TODO Auto-generated method stub
		return tourDao.save(tour);
	}

	@Override
	public void deleteById(Long id) {
		// TODO Auto-generated method stub
		tourDao.deleteById(id);
	}

	@Override
	public boolean existsBy(Long id) {
		// TODO Auto-generated method stub
		return tourDao.existsById(id);
	}

}
