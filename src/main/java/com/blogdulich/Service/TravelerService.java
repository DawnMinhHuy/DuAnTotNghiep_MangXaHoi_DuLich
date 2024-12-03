package com.blogdulich.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blogdulich.DAO.TravelerDAO;
import com.blogdulich.DAO.DAO;
import com.blogdulich.Entity.Traveler;

@Service
public class TravelerService extends DAO<Traveler, Long> {

	@Autowired
	private TravelerDAO travelerDao;
	
	@Override
	public List<Traveler> findAll() {
		// TODO Auto-generated method stub
		return travelerDao.findAll();
	}

	@Override
	public Traveler findById(Long id) {
		// TODO Auto-generated method stub
		return travelerDao.findById(id).get();
	}

	@Override
	public Traveler save(Traveler traveler) {
		// TODO Auto-generated method stub
		return travelerDao.save(traveler);
	}

	@Override
	public void deleteById(Long id) {
		// TODO Auto-generated method stub
		travelerDao.deleteById(id);
	}

	@Override
	public boolean existsBy(Long id) {
		// TODO Auto-generated method stub
		return travelerDao.existsById(id);
	}

}
