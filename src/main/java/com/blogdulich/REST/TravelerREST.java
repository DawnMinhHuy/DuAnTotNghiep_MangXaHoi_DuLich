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


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.blogdulich.Entity.Traveler;
import com.blogdulich.Service.TravelerService;

import java.util.List;
@CrossOrigin("*")
@RestController
@RequestMapping("/REST/traveler")
public class TravelerREST {

    @Autowired
    private TravelerService travelerService;

    @GetMapping
    public List<Traveler> getAllTraveler() {
        return travelerService.findAll();
    }

    @GetMapping("/{id}")
    public Traveler getTravelerById(@PathVariable("id") Long travelerId) {
        return travelerService.findById(travelerId);
    }

    @PostMapping
    public Traveler createTraveler(@RequestBody Traveler traveler) {
        return travelerService.save(traveler);
    }
    
    @PutMapping("/{id}")
    public Traveler updateTravelerById(@PathVariable("id") Long travelerid, @RequestBody Traveler traveler) {
    	return travelerService.save(traveler);
    }

    @DeleteMapping("/{id}")
    public void deleteTraveler(@PathVariable("id") Long travelerId) {
        travelerService.deleteById(travelerId);
    }
}
