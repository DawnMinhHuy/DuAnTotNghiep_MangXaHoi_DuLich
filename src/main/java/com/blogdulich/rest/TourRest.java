package com.blogdulich.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.blogdulich.entity.Tour;
import com.blogdulich.service.TourService;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;



@RestController
@RequestMapping("/rest/TourRest")

public class TourRest {
	 @Autowired
	    private TourService tourservice;
	 
	 @GetMapping
	 public List<Tour> getList() {
	 	return tourservice.findAll();
	 }
	 
	 @GetMapping("/{tourId}")
	 public Tour getbyid(@PathVariable Long id) {
	 	return tourservice.findById(id);
	 }
	 
	 @PostMapping
	 public Tour postSave(@RequestBody Tour entity) {
	 	return tourservice.save(entity);
	 }
	 
	 @PutMapping("/{tourid}")
	 public Tour putTourId(@PathVariable Long id, @RequestBody Tour entity) {
	 	return tourservice.save(entity);
	 }
	 
	 @DeleteMapping("/{tourid}")
	 public void deletebyid(@PathVariable Long id) {
		 tourservice.deleteById(id);
	 }
	 
}
