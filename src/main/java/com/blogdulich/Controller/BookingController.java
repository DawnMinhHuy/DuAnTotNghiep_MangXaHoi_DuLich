package com.blogdulich.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blogdulich.REST.BookingREST;
import com.blogdulich.Service.BookingService;

//import ch.qos.logback.core.model.Model;


@Controller
@RequestMapping(path = "/bookings")
public class BookingController {
	@Autowired
//	BookingREST bkr;
	BookingService bs;
	@GetMapping
	public String bookinglist(Model model) {
//		BookingREST bkr = new BookingREST();
//		bkr.getAllBookings();
		
		model.addAttribute("items",bs.findAll());
		return "Booking";
	}
	
	
}
