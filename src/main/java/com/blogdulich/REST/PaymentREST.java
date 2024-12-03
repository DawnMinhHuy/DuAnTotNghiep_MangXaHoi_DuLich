//package com.blogdulich.REST;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.DeleteMapping;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.PutMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.blogdulich.DAO.BookingDAO;
//import com.blogdulich.entity.Booking;
//
//@RestController
//@RequestMapping(path = "/rest")
//public class BookingREST {
//	@Autowired
//	BookingDAO bookingDao;
//	
//	@GetMapping(path = "/booking")
//	public List<Booking> getAll() {
//		return bookingDao.findAll();
//	}
//	
//
//
////    @GetMapping(path = "/booking/{id}")
////    public Booking getBookingById(@PathVariable("id") String bookingId) {
////        return bookingdao.findById(bookingId).get();
////    }
////
////    @PostMapping(path = "/booking")
////    public Booking createBooking(@RequestBody Booking booking) {
////        return bookingdao.save(booking);
////    }
////
////    @PutMapping(path = "/booking/{id}")
////    public Booking updateBooking(@PathVariable("id") String bookingId, @RequestBody Booking booking) {
////        return bookingdao.save(booking);
////    }
////
////    @DeleteMapping(path = "/booking/{id}")
////    public void deleteBooking(@PathVariable("id") String bookingId) {
////    	bookingdao.deleteById(bookingId);
////    }
//}
package com.blogdulich.REST;

import com.blogdulich.Entity.Booking;
import com.blogdulich.Entity.Payment;
import com.blogdulich.Service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin("*")
@RestController
@RequestMapping("/REST/payment")
public class PaymentREST {

    @Autowired
    private PaymentService paymentService;

    @GetMapping
    public List<Payment> getAllPayment() {
        return paymentService.findAll();
    }

    @GetMapping("/{id}")
    public Payment getPaymentById(@PathVariable("id") Long paymentId) {
        return paymentService.findById(paymentId);
    }

    @PostMapping
    public Payment createPayment(@RequestBody Payment payment) {
        return paymentService.save(payment);
    }
    
    @PutMapping("/{id}")
    public Payment updatePaymentById(@PathVariable("id") Long paymentId, @RequestBody Payment payment) {
    	return paymentService.save(payment);
    }

    @DeleteMapping("/{id}")
    public void deleteBooking(@PathVariable("id") Long paymentId) {
    	paymentService.deleteById(paymentId);
    }
}
