package com.blogdulich.REST;

import com.blogdulich.entity.Booking;
import com.blogdulich.Service.*;
import com.blogdulich.ServiceIMPL.BookingServiceIMPL;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin("*")
@RestController
@RequestMapping("/REST/bookings")
public class BookingREST {

    @Autowired
    private Booking_Service bookingService;

    @GetMapping
    public List<Booking> getAllBookings() {
        return bookingService.findAll();
    }

    @GetMapping("/{id}")
    public Booking getBookingById(@PathVariable("id") Integer id) {
        return bookingService.findById(id);
    }

    @PostMapping
    public Booking createBooking(@RequestBody Booking booking) {
        return bookingService.save(booking);
    }
    
    @PutMapping("/{id}")
    public Booking updateBookingById(@PathVariable("id") String bookingid, @RequestBody Booking booking) {
    	return bookingService.save(booking);
    }

    @DeleteMapping("/{id}")
    public void deleteBooking(@PathVariable("id") Integer id) {
        bookingService.deleteById(id);
    }
}