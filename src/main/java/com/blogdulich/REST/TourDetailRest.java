package com.blogdulich.REST;

import com.blogdulich.entity.Tour_Detail;
import com.blogdulich.entity.Tours;
import com.blogdulich.Service.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin("*")
@RestController
@RequestMapping("/REST/tours_detail")
public class TourDetailRest {

    @Autowired
    private TourDetailService tourDetailService;

    @GetMapping
    public List<Tour_Detail> getAllTours() {
        return tourDetailService.findAll();
    }

    @GetMapping("/{id}")
    public Tour_Detail getToursById(@PathVariable("id") Integer id) {
        return tourDetailService.findById(id);
    }

    @PostMapping
    public Tour_Detail createTours(@RequestBody Tour_Detail tour_Detail) {
        return tourDetailService.save(tour_Detail);
    }
    
    @PutMapping("/{id}")
    public Tour_Detail updateToursById(@PathVariable("id") String id, @RequestBody Tour_Detail tour_Detail) {
    	return tourDetailService.save(tour_Detail);
    }

    @DeleteMapping("/{id}")
    public void deleteTours(@PathVariable("id") Integer id) {
    	tourDetailService.deleteById(id);
    }
}