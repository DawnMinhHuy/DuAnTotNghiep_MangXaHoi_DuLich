package com.blogdulich.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blogdulich.DAO.BookingDAO;
import com.blogdulich.DAO.DAO;
import com.blogdulich.DAO.PaymentDAO;
import com.blogdulich.Entity.Booking;
import com.blogdulich.Entity.Payment;

@Service
public class PaymentService extends DAO<Payment, Long> {

	@Autowired
	private PaymentDAO paymentDao;
	
	@Override
	public List<Payment> findAll() {
		// TODO Auto-generated method stub
		return paymentDao.findAll();
	}

	@Override
	public Payment findById(Long id) {
		// TODO Auto-generated method stub
		return paymentDao.findById(id).get();
	}

	@Override
	public Payment save(Payment payment) {
		// TODO Auto-generated method stub
		return paymentDao.save(payment);
	}

	@Override
	public void deleteById(Long id) {
		// TODO Auto-generated method stub
		paymentDao.deleteById(id);
	}

	@Override
	public boolean existsBy(Long id) {
		// TODO Auto-generated method stub
		return paymentDao.existsById(id);
	}

}
