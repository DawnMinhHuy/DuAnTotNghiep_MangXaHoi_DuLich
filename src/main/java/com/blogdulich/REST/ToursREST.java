package com.blogdulich.REST;

import com.blogdulich.entity.Tours;
import com.blogdulich.Service.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin("*")
@RestController
@RequestMapping("/REST/tours")
public class ToursREST {

    @Autowired
    private TourService tourService;

    @GetMapping
    public List<Tours> getAllTours() {
        return tourService.findAll();
    }

    @GetMapping("/{id}")
    public Tours getToursById(@PathVariable("id") Integer id) {
        return tourService.findById(id);
    }

    @PostMapping
    public Tours createTours(@RequestBody Tours tours) {
        return tourService.save(tours);
    }
    
    @PutMapping("/{id}")
    public Tours updateToursById(@PathVariable("id") String id, @RequestBody Tours tours) {
    	return tourService.save(tours);
    }

    @DeleteMapping("/{id}")
    public void deleteTours(@PathVariable("id") Integer id) {
    	tourService.deleteById(id);
    }
}